//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// (C) Copyright 2018-2022 Modeling Value Group B.V. (http://modelingvalue.org)                                        ~
//                                                                                                                     ~
// Licensed under the GNU Lesser General Public License v3.0 (the 'License'). You may not use this file except in      ~
// compliance with the License. You may obtain a copy of the License at: https://choosealicense.com/licenses/lgpl-3.0  ~
// Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on ~
// an 'AS IS' BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the  ~
// specific language governing permissions and limitations under the License.                                          ~
//                                                                                                                     ~
// Maintainers:                                                                                                        ~
//     Wim Bast, Tom Brus, Ronald Krijgsheld                                                                           ~
// Contributors:                                                                                                       ~
//     Arjan Kok, Carel Bast                                                                                           ~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

defaultTasks(
    "mvgcorrector",
    "build",
    "mvgtagger",
    "mvguploader",
)
plugins {
    id("org.modelingvalue.gradle.mvgplugin") version "1.0.8"
    id("com.dorongold.task-tree") version "2.1.0" // to get a task-tree generation task
}

///////////////////////////////////////////////////////////////////////////////////////////////
// import ant file:
ant.lifecycleLogLevel = AntBuilder.AntMessagePriority.INFO
ant.setProperty("mps_home", mvgmps.mpsInstallDir.toString())
ant.setProperty("version", version)
ant.setProperty("versionExtra", mvgmps.versionExtra)
ant.setProperty("versionStamp", mvgmps.versionStamp)
val mps_build = gradle.rootProject.projectDir.resolve("mps_build.xml")
val backup = gradle.rootProject.projectDir.resolve("mps_build.xml.backup")
// WORKAROUND START (see https://youtrack.jetbrains.com/issue/MPS-34059)
// for UTF-8 chars used in MPS: add file.encoding to jvmargs, crude but works for now
java.nio.file.Files.deleteIfExists(backup.toPath())
java.nio.file.Files.copy(mps_build.toPath(), backup.toPath())
mps_build.writeText(mps_build.readLines().joinToString(separator = System.lineSeparator()) {
    it + if (it.matches(Regex(".*<jvmargs>$"))) "<arg value=\"-Dfile.encoding=UTF8\"/>" else ""
})
// WORKAROUND END
try {
    ant.importBuild("mps_build.xml") {
        "mpsant-$it"
    }
    tasks.filter {
        it.name.startsWith("mpsant-")
    }.forEach {
        it.group = "mpsant"
        if (it.name == "mpsant-fetchDependencies") {
            // the runtime jars should be build and gathered first:
            it.dependsOn(":runtime:gatherRuntimeJars")
        }
        if (it.name.startsWith("mpsant-java.compile")) {
            // generation should be triggered before any compilation can take place:
            it.dependsOn("mpsant-generate")
        }
        // always set the properties first:
        it.doFirst {
            ant.setProperty("mps_home", mvgmps.mpsInstallDir.toString())
            ant.setProperty("version", version)
            ant.setProperty("versionExtra", mvgmps.versionExtra)
            ant.setProperty("versionStamp", mvgmps.versionStamp)
        }
    }
    val clean_gen_dirs = tasks.create("clean_gen_dirs") {
        group = "build"
        doLast {
            listOf("languages", "solutions").forEach {
                File(it).walkTopDown().filter {
                    it.name.contains("_gen")
                }.forEach {
                    it.deleteRecursively()
                }
            }
        }
    }
    tasks.create("build") {
        group = "build"
        dependsOn(tasks.named("mpsant-build"))
    }
    tasks.create("clean") {
        group = "build"
        dependsOn(clean_gen_dirs)
    }
    tasks.create("publish") {
        group = "publishing"
        dependsOn(tasks.named("mpsant-assemble"))
    }
} catch (e: GradleException) {
    if (!e.message!!.startsWith("Could not import Ant build file"))
        throw e
    println("WARNING: ant import could not be completed correctly because MPS is not yet downloaded, restart the gradle action to fix this" + e);
} finally {
    java.nio.file.Files.deleteIfExists(mps_build.toPath())
    java.nio.file.Files.move(backup.toPath(), mps_build.toPath())
}
///////////////////////////////////////////////////////////////////////////////////////////////
// upload plugin to jetbrains
mvguploader {
    pluginId = "13797"
}
tasks.mvguploader {
    dependsOn("mpsant-assemble")
}



tasks.register<DefaultTask>("download-MPS") {
    group = "modelingvaluegroup"
    doLast {
        org.modelingvalue.gradle.mvgplugin.MvgPlugin.singleton.resolveMpsDependency("mps-boot")
    }
}
