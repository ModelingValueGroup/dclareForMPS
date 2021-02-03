defaultTasks(
    "mvgcorrector",
    "test",
    "mpsant-clean",
    "mpsant-cleanSources",
    "mpsant-generate",
    "mpsant-build",
    "mvgtagger",
    "mvguploader"
)

plugins {
    id("org.modelingvalue.gradle.mvgplugin") version "0.4.21"
}

// import ant file:
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
    // the runtime jars should be build and gathered first:
    it.dependsOn(":runtime:gatherRuntimeJars")
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
