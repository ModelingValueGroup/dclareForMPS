//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// (C) Copyright 2018-2021 Modeling Value Group B.V. (http://modelingvalue.org)                                        ~
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
    "test",
    "mpsant-build",
    "mvgtagger",
    "mvguploader",
)

plugins {
    id("org.modelingvalue.gradle.mvgplugin") version "0.5.7"
}

// import ant file:
ant.lifecycleLogLevel = AntBuilder.AntMessagePriority.INFO
ant.setProperty("mps_home", mvgmps.mpsInstallDir.toString())
ant.setProperty("version", version)
ant.setProperty("versionExtra", mvgmps.versionExtra)
ant.setProperty("versionStamp", mvgmps.versionStamp)
ant.importBuild("mps_build.xml") {
    "mpsant-$it"
}
tasks.filter {
    it.name.startsWith("mpsant-")
}.forEach {
    if (it.name.equals("mpsant-fetchDependencies")) {
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

// upload plugin to jetbrains
mvguploader {
    pluginId = "13797"
}
tasks.mvguploader {
    dependsOn("mpsant-assemble")
}
