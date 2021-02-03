plugins {
    `java-library`
    `maven-publish`
}
dependencies {
    implementation("org.modelingvalue:immutable-collections:1.5.0-BRANCHED")
    implementation("org.modelingvalue:dclare:1.5.0-BRANCHED")

    compileOnly(mpsJar("extensions"))
    compileOnly(mpsJar("mps-closures"))
    compileOnly(mpsJar("mps-core"))
    compileOnly(mpsJar("mps-editor"))
    compileOnly(mpsJar("mps-openapi"))
    compileOnly(mpsJar("mps-platform"))
    compileOnly(mpsJar("mps-project-check"))
    compileOnly(mpsJar("platform-api"))
    compileOnly(mpsJar("util"))
}
publishing {
    publications {
        create<MavenPublication>("dclareForMPS-runtime") {
            from(components["java"])
        }
    }
}
tasks.register<Copy>("gatherRuntimeJars") {
    into(rootProject.projectDir.toPath().resolve("solutions/DclareMPSRuntime/lib"))
    from(
        configurations.runtimeClasspath,
        configurations.runtimeClasspath.get().allArtifacts.files
    )
    rename {
        it
            .replaceFirst(Regex("[a-zA-Z_]*-[0-9a-z]*-SNAPSHOT[.]jar"), ".jar")
            .replaceFirst(Regex("-[0-9.]*[.]jar"), ".jar")
    }
    tasks.findByName("jar")?.finalizedBy(this)
}
