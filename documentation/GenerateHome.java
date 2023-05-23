//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// (C) Copyright 2018-2023 Modeling Value Group B.V. (http://modelingvalue.org)                                        ~
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

import java.io.IOException;
import java.io.PrintStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.stream.Collectors;
import java.util.stream.Stream;

class GenerateHome {
    public static void main(String[] args) throws IOException {
        if (args.length != 6) {
            System.err.println("Usage: GenerateHome <Home.md> <owner> <repo> <version> <branch> <hash>");
            System.exit(1);
        }
        new Doc(args[0])
                .replaceVersion(args[1], args[2], args[3], args[4], args[5])
                .write(System.out);
    }
}

class Doc {
    final List<Line> lines;

    public Doc(String filePath) throws IOException {
        Path homeMd  = Paths.get(filePath);
        Path rootDir = homeMd.getParent();
        lines = Files.readAllLines(homeMd)
                .stream()
                .map(Line::new)
                .filter(line -> line.isValid(rootDir))
                .collect(Collectors.toList());
    }

    public Doc replaceVersion(String owner, String repo, String version, String branch, String hash) {
        Version v = new Version(owner, repo, version, branch, hash);
        lines.removeIf(line -> line.isVersion() && line.version.compareTo(v) == 0);
        lines.add(new Line(v));
        return this;
    }

    public void write(PrintStream out) {
        Stream<Line> pre      = lines.stream().takeWhile(Line::isNotTableHeader).filter(Line::isNotVersion);
        Stream<Line> hdr      = lines.stream().filter(Line::isTableHeader).limit(1);
        Stream<Line> versions = lines.stream().filter(Line::isVersion).sorted();
        Stream<Line> post     = lines.stream().dropWhile(Line::isNotTableHeader).skip(1).filter(Line::isNotVersion);
        Stream.concat(pre, Stream.concat(hdr, Stream.concat(versions, post))).forEach(out::println);
    }
}

class Line implements Comparable<Line> {
    final String  raw;
    final Version version;

    public Line(String line) {
        raw     = line;
        version = Version.newVersion(line);
    }

    public Line(Version version) {
        raw          = null;
        this.version = version;
    }

    @Override
    public String toString() {
        return isVersion() ? version.toString() : raw;
    }

    public boolean isTableHeader() {
        return isNotVersion() && raw.startsWith("|:--");
    }

    public boolean isNotTableHeader() {
        return !isTableHeader();
    }

    public boolean isVersion() {
        return version != null;
    }

    public boolean isNotVersion() {
        return version == null;
    }

    public boolean isValid(Path rootDir) {
        return isNotVersion() || version.isValid(rootDir);
    }

    @Override
    public int compareTo(Line o) {
        return version.compareTo(o.version);
    }
}

class Version implements Comparable<Version> {
    private static final String  PATTERN_COL1    = linkPattern("([^]]*)", "[^)]*");
    private static final String  PATTERN_COL2    = "([^ ]*)";
    private static final String  PATTERN_COL3    = linkPattern("`([^`]*)`", "https://github.com/([^/]*)/([^/]*)/tree/([^)]*)");
    private static final String  PATTERN_COL4    = linkPattern("[^]]*", "https://github.com/([^/]*)/([^/]*)/tree/([^)]*)");
    public static final  Pattern VERSION_PATTERN = Pattern.compile("^\\| +" + PATTERN_COL1 + " +\\| +" + PATTERN_COL2 + " +\\| +" + PATTERN_COL3 + " +\\| +" + PATTERN_COL4 + " +\\|$");

    public static Version newVersion(String line) {
        Matcher matcher = VERSION_PATTERN.matcher(line);
        return matcher.matches() ? new Version(matcher) : null;
    }

    final String version;
    final String date;
    final String branch;
    final String owner;
    final String repo;
    final String hash;

    public Version(String owner, String repo, String version, String branch, String hash) {
        this.version = version;
        this.date    = LocalDate.now().format(DateTimeFormatter.ofPattern("dd-MM-yyyy"));
        this.branch  = branch;
        this.owner   = owner;
        this.repo    = repo;
        this.hash    = hash;
    }

    public Version(Matcher matcher) {
        if (matcher.groupCount() != 9) {
            throw new Error("Invalid version line: " + matcher.group(0) + ": groupcount=" + matcher.groupCount() + " but should be 9");
        }
        version = matcher.group(1);
        date    = matcher.group(2);
        branch  = matcher.group(3);
        owner   = matcher.group(4);
        repo    = matcher.group(5);
        if (!branch.equals(matcher.group(6))) {
            throw new Error("Invalid version line: " + matcher.group(6) + " != " + branch);
        }
        if (!owner.equals(matcher.group(7))) {
            throw new Error("Invalid version line: " + matcher.group(7) + " != " + owner);
        }
        if (!repo.equals(matcher.group(8))) {
            throw new Error("Invalid version line: " + matcher.group(8) + " != " + repo);
        }
        hash = matcher.group(9);
    }

    public boolean isValid(Path rootDir) {
        Path d = rootDir.resolve(version);
        return Files.isDirectory(d) && Files.isRegularFile(d.resolve("main.md"));
    }

    @Override
    public String toString() {
        String versionColumn = link(version, version + "/main");
        String branchColumn  = link(branch, "https://github.com/" + owner + "/" + repo + "/tree/" + branch);
        String linkColumn    = link(hash.substring(0, 7), "https://github.com/" + owner + "/" + repo + "/tree/" + hash);
        return String.format("| %s | %s | %s | %s |", versionColumn, date, branchColumn, linkColumn);
    }

    private static String linkPattern(String text, String link) {
        return "\\[" + text + "\\]\\(" + link + "\\)";
    }

    private static String link(String text, String link) {
        return "[" + text + "](" + link + ")";
    }

    @Override
    public int compareTo(Version o) {
        return o.version.compareTo(version);
    }
}
