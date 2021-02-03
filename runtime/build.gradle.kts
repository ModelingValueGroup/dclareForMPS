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

plugins {
    `java-library`
    `maven-publish`
}
dependencies {
    implementation("org.modelingvalue:mvgjson:1.5.0-BRANCHED")
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
