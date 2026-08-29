//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//  (C) Copyright 2018-2026 Modeling Value Group B.V. (http://modelingvalue.org)                                         ~
//                                                                                                                       ~
//  Licensed under the GNU Lesser General Public License v3.0 (the 'License'). You may not use this file except in       ~
//  compliance with the License. You may obtain a copy of the License at: https://choosealicense.com/licenses/lgpl-3.0   ~
//  Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on  ~
//  an 'AS IS' BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the   ~
//  specific language governing permissions and limitations under the License.                                           ~
//                                                                                                                       ~
//  Maintainers:                                                                                                         ~
//      Wim Bast, Tom Brus                                                                                               ~
//                                                                                                                       ~
//  Contributors:                                                                                                        ~
//      Ronald Krijgsheld ✝, Arjan Kok, Carel Bast                                                                       ~
// --------------------------------------------------------------------------------------------------------------------- ~
//  In Memory of Ronald Krijgsheld, 1972 - 2023                                                                          ~
//      Ronald was suddenly and unexpectedly taken from us. He was not only our long-term colleague and team member      ~
//      but also our friend. "He will live on in many of the lines of code you see below."                               ~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

defaultTasks(
        "mvgcorrector",
        "build",
        "mvgtagger",
        "mvguploader",
            )
plugins {
    id("org.modelingvalue.gradle.mvgplugin") version "3.0.1"
}

///////////////////////////////////////////////////////////////////////////////////////////////
// import ant file:
try {
    @Suppress("LocalVariableName")
    val version_mps: String by project
    if (!mvgmps.mpsInstallDir.isDirectory)
        throw GradleException("You need to first run './gradlew download-MPS' to download MPS")

    ant.lifecycleLogLevel = AntBuilder.AntMessagePriority.INFO
    ant.setProperty("mps_home", mvgmps.mpsInstallDir.toString())
    ant.setProperty("version", version)
    ant.setProperty("versionExtra", mvgmps.versionExtra)
    ant.setProperty("versionStamp", mvgmps.versionStamp)
    ant.setProperty("version_mps", version_mps)
// WORKAROUND START (see https://youtrack.jetbrains.com/issue/MPS-34059)
//     for UTF-8 chars used in MPS: add file.encoding to jvmargs, crude but works for now
    val antScript = resources.text.fromString(gradle.rootProject.projectDir.resolve("mps_build.xml").readLines().joinToString(separator = System.lineSeparator()) {
        it + if (it.matches(Regex(".*<jvmargs>$"))) "<arg value=\"-Dfile.encoding=UTF8\"/>" else ""
    })
// WORKAROUND END
    ant.importBuild(antScript, gradle.rootProject.projectDir.absolutePath) {
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
    val cleanGenDirs = tasks.register("clean_gen_dirs") {
        group = "build"
        doLast {
            listOf("languages", "solutions").forEach {
                val d = project.projectDir.resolve(it)
                println("INFO: cleaning all _gen dirs from: $d")
                d.walkTopDown().filter {
                    it.name.contains("_gen")
                }.forEach {
                    it.deleteRecursively()
                }
            }
            val buildDir = project.projectDir.resolve("build")
            listOf("tmp", "artifacts").forEach {
                val d = buildDir.resolve(it)
                println("INFO: cleaning from build dir: $d")
                d.deleteRecursively()
            }
        }
    }
    tasks.register("build") {
        group = "build"
        dependsOn(tasks.named("mpsant-build"))
    }
    tasks.register("clean") {
        group = "build"
        dependsOn(cleanGenDirs)
    }
    tasks.register("publish") {
        group = "publishing"
        dependsOn(tasks.named("mpsant-assemble"))
    }
} catch (e: Exception) {
    println("problem with import of ant file mps_build.xml: " + e)
}
///////////////////////////////////////////////////////////////////////////////////////////////
// download MPS (replaces the old bootstrap.gradle.kts / bootstrap/ approach)
tasks.register<DefaultTask>("download-MPS") {
    group = "modelingvaluegroup"
    doLast {
        @Suppress("UNCHECKED_CAST")
        (org.modelingvalue.gradle.mvgplugin.MvgPlugin.singleton.resolveMpsDependency("mps-boot") as Iterable<File>).toList()
    }
}
///////////////////////////////////////////////////////////////////////////////////////////////
// upload plugin to jetbrains
mvguploader {
    pluginId = "13797"
}
tasks.mvguploader {
    dependsOn("mpsant-assemble")
}
