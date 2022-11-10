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

plugins {
    `java-library`
    `maven-publish`
}
dependencies {
    implementation("org.modelingvalue:mvg-json:2.1.2-BRANCHED")
    implementation("org.modelingvalue:immutable-collections:2.1.2-BRANCHED")
    implementation("org.modelingvalue:dclare:2.1.2-BRANCHED")

    compileOnly(mpsJar("mps-closures"))
    compileOnly(mpsJar("mps-core"))
    compileOnly(mpsJar("mps-editor"))
    compileOnly(mpsJar("mps-openapi"))
    compileOnly(mpsJar("mps-platform"))
    compileOnly(mpsJar("mps-project-check"))
    compileOnly(mpsJar("platform-api"))
    compileOnly(mpsJar("util"))
    compileOnly(mpsJar("mps-behavior-runtime"))
    compileOnly(mpsJar("debugger-api"))
    compileOnly(mpsJar("mps-debugger-api"))
}
publishing {
    publications {
        create<MavenPublication>("dclareForMPS-runtime") {
            from(components["java"])
        }
    }
}


///////////////////////////////////////////////////////////////////////////////////////////////
// gather jars:
val libDir1 = rootProject.projectDir.toPath().resolve("solutions/DclareMPSRuntime/lib")
val libDir2 = rootProject.projectDir.toPath().resolve("solutions/DclareRuntime/lib")
val gatherTask1 = tasks.register<Copy>("gatherRuntimeJars-part1") {
    into(libDir1)
    group = "+++gather"
    from(
        tasks["jar"].outputs,
        configurations.runtimeClasspath,
        configurations.runtimeClasspath.get().allArtifacts.files
    )
    // The following jars are excluded here because they should not be included by MPS from here.
    // Otherwise MPS will have the classes imported through multiple class loaders and that causes havoc.
    exclude("dclare*.jar", "immutable-collections*.jar", "mvg-json*.jar")
    rename {
        it
            .replaceFirst(Regex("[a-zA-Z_]*-[0-9a-z]*-SNAPSHOT[.]jar"), ".jar") // for backwards compat.... remove later
            .replaceFirst(Regex("[0-9a-zA-Z_]*-[0-9a-zA-Z_]*-[0-9a-zA-Z_]*-SNAPSHOT[.]jar"), ".jar")
            .replaceFirst(Regex("-[0-9.]*[.]jar"), ".jar")
    }
    eachFile {
        println(String.format("   - GATHER %s", relativePath))
    }
    doLast {
        println(String.format("   - TO     %s", destinationDir))
    }
}
val gatherTask2 = tasks.register<Copy>("gatherRuntimeJars-part2") {
    into(libDir2)
    group = "+++gather"
    from(
        tasks["jar"].outputs,
        configurations.runtimeClasspath,
        configurations.runtimeClasspath.get().allArtifacts.files
    )
    // The following jars are excluded here because they should not be included by MPS from here.
    // Otherwise MPS will have the classes imported through multiple class loaders and that causes havoc.
    exclude("runtime*.jar")
    rename {
        it
            .replaceFirst(Regex("[a-zA-Z_]*-[0-9a-z]*-SNAPSHOT[.]jar"), ".jar") // for backwards compat.... remove later
            .replaceFirst(Regex("[0-9a-zA-Z_]*-[0-9a-zA-Z_]*-[0-9a-zA-Z_]*-SNAPSHOT[.]jar"), ".jar")
            .replaceFirst(Regex("-[0-9.]*[.]jar"), ".jar")
    }
    eachFile {
        println(String.format("   - GATHER %s", relativePath))
    }
    doLast {
        println(String.format("   - TO     %s", destinationDir))
    }
}

val gatherTask = tasks.register<GradleBuild>("gatherRuntimeJars") {
    group = "+++gather"
    tasks = listOf("gatherRuntimeJars-part1", "gatherRuntimeJars-part2")
}
tasks.getByName("assemble").finalizedBy(gatherTask)
tasks.getByName("publish").finalizedBy(gatherTask)
tasks.getByName<Delete>("clean") {
    delete.add(libDir1)
    delete.add(libDir2)
}
