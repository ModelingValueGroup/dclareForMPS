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

import org.jetbrains.annotations.NotNull;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import java.util.stream.StreamSupport;

class CopyToWiki {
    public static void main(String[] args) throws IOException {
        if (args.length != 7) {
            System.err.println("Usage: CopyToWiki <docuDir> <wikiDir> <owner> <repo> <version> <branch> <hash>");
            System.exit(1);
        }
        Path    docuDir    = Paths.get(args[0]);
        Path    wikiDir    = Paths.get(args[1]);
        Version newVersion = new Version(args[2], args[3], args[4], args[5], args[6]);

        new Wiki(wikiDir).replaceVersion(newVersion, docuDir);
    }
}

@SuppressWarnings("resource")
class Wiki {
    static final String SEPARATOR_MD  = "–";
    static final String SEPARATOR_IMG = "$";

    private final Path       wikiDir;
    private final Path       homeMd;
    final         List<Line> lines;

    public Wiki(Path wikiDir) throws IOException {
        this.wikiDir = wikiDir;
        this.homeMd  = wikiDir.resolve("Home.md");
        lines        = Files.readAllLines(homeMd)
                .stream()
                .map(Line::new)
                .filter(line -> line.isValid(wikiDir))
                .collect(Collectors.toList());
    }

    public void replaceVersion(Version newVersion, Path docuDir) throws IOException {
        System.err.println();
        removeOldDocs(wikiDir, newVersion.version);
        System.err.println();
        copyDocs(docuDir, wikiDir, newVersion.version);

        System.err.println();
        if (lines.removeIf(line -> line.isVersion() && line.version.compareTo(newVersion) == 0)) {
            System.err.println("##DEL## " + newVersion.version);
        }
        lines.add(new Line(newVersion));

        System.err.println();
        writeHomeMd();
    }

    private void removeOldDocs(Path wikiDir, String version) throws IOException {
        Files.newDirectoryStream(wikiDir).forEach(p -> {
            String fileName = p.getFileName().toString();
            if (fileName.startsWith(version + SEPARATOR_MD) || fileName.startsWith(version + SEPARATOR_IMG)) {
                deleteFile(p);
            }
        });
    }

    @SuppressWarnings("resource")
    static class CopyFileInfo {
        final String separator;
        final Path   src;
        final Path   dst;
        final String oldPath;
        final String newPath;

        public CopyFileInfo(Path docuDir, Path wikiDir, Path versionDir, Path src) {
            Path fromDoc = docuDir.relativize(src);
            this.separator = getSeparator(fromDoc.getFileName().toString());
            this.src       = src;
            this.dst       = wikiDir.resolve(getWikiFileName(versionDir, fromDoc, separator));
            this.oldPath   = fromDoc.toString();
            this.newPath   = getWikiFileName(versionDir, fromDoc, getSeparator(fromDoc.getFileName().toString()));
        }

        public void copyFile(Map<String, CopyFileInfo> map) {
            if (separator.equals(SEPARATOR_MD)) {
                translateMdFile(map);
            } else {
                copyBinaryFile();
            }
        }

        private void translateMdFile(Map<String, CopyFileInfo> map) {
            System.err.printf("##TRA## %-70s => %s\n", src, dst);
            try {
                List<String> outLines = Files.lines(src)
                        .map(line -> translateLine(line, map))
                        .collect(Collectors.toList());
                Files.write(dst, outLines);
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }

        private String translateLine(String line) {
            Matcher matcher = Pattern.compile("\\(" + Pattern.quote(oldPath).replaceAll("/", "\\\\E(/|%2f|%2F)\\\\Q") + "\\)").matcher(line);
            if (matcher.find()) {
                return matcher.replaceAll("(" + newPath.replaceAll("\\$", "\\\\\\$") + ")");
            } else {
                return line;
            }
        }

        private String translateLine(String line, Map<String, CopyFileInfo> map) {
            String[] v = new String[]{line};
            map.values().forEach(cfi -> v[0] = cfi.translateLine(v[0]));
            if (!v[0].equals(line)) {
                System.err.println("##TRA##       >   " + line);
                System.err.println("##TRA##       <   " + v[0]);
            }
            return v[0];
        }

        private void copyBinaryFile() {
            System.err.printf("##CPY## %-70s => %s\n", src, dst);
            try {
                Files.copy(src, dst);
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }

    private void copyDocs(Path docuDir, Path wikiDir, String version) throws IOException {
        Path versionDir = Paths.get(version);
        Map<String, CopyFileInfo> map = Files.walk(docuDir)
                .filter(Files::isRegularFile)
                .map(src -> new CopyFileInfo(docuDir, wikiDir, versionDir, src))
                .collect(Collectors.toMap(cfi -> cfi.oldPath, cfi -> cfi));
        map.values().forEach(cfi -> cfi.copyFile(map));
    }

    private static void deleteFile(Path p) {
        System.err.printf("##DEL## %s\n", p);
        try {
            Files.delete(p);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private static String getWikiFileName(Path versionDir, Path fromDoc, String separator) {
        return StreamSupport.stream(versionDir.resolve(fromDoc).spliterator(), false).map(Path::toString).collect(Collectors.joining(separator));
    }

    private static String getSeparator(String fileName) {
        if (fileName.endsWith(".png")) {
            return SEPARATOR_IMG;
        }
        if (fileName.endsWith(".jpeg")) {
            return SEPARATOR_IMG;
        }
        if (fileName.endsWith(".md")) {
            return SEPARATOR_MD;
        }
        return SEPARATOR_MD;
    }

    private void writeHomeMd() throws IOException {
        Stream<Line> pre      = lines.stream().takeWhile(Line::isNotTableHeader).filter(Line::isNotVersion);
        Stream<Line> hdr      = lines.stream().filter(Line::isTableHeader).limit(1);
        Stream<Line> versions = lines.stream().filter(Line::isVersion).sorted();
        Stream<Line> post     = lines.stream().dropWhile(Line::isNotTableHeader).skip(1).filter(Line::isNotVersion);
        List<String> lines    = Stream.concat(pre, Stream.concat(hdr, Stream.concat(versions, post))).peek(v -> v.validate(wikiDir)).map(Line::render).collect(Collectors.toList());
        Files.write(homeMd, lines);
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

    public String render() {
        return isVersion() ? version.render() : raw;
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

    public void validate(Path rootDir) {
        if (isVersion()) {
            version.validate(rootDir);
        }
    }

    @Override
    public int compareTo(Line o) {
        return version.compareTo(o.version);
    }
}

class Version implements Comparable<Version> {
    private static final String  PATTERN_COL1    = linkPattern(uptoPattern("]"), uptoPattern(")"));
    private static final String  PATTERN_COL2    = uptoPattern(" ");
    private static final String  PATTERN_COL3    = linkPattern("`" + uptoPattern("]") + "`", "https://github.com/([^/]*)/([^/]*)/tree/([^)]*)");
    private static final String  PATTERN_COL4    = linkPattern("`" + uptoPattern("]") + "`", "https://github.com/([^/]*)/([^/]*)/tree/([^)]*)");
    private static final Pattern VERSION_PATTERN = Pattern.compile("^\\| +" + PATTERN_COL1 + " +\\| +" + PATTERN_COL2 + " +\\| +" + PATTERN_COL3 + " +\\| +" + PATTERN_COL4 + " +\\|$");

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
        if (matcher.groupCount() != 11) {
            throw new Error("Invalid version line: " + matcher.group(0) + ": groupcount=" + matcher.groupCount() + " but should be 11");
        }
        version = matcher.group(1);
        if (!matcher.group(2).equals(myBareMainLink())) {
            throw new Error("Invalid version line: " + matcher.group(2) + " != " + myBareMainLink());
        }
        date   = matcher.group(3);
        branch = matcher.group(4);
        owner  = matcher.group(5);
        repo   = matcher.group(6);
        if (!matcher.group(7).equals(branch)) {
            throw new Error("Invalid version line: " + matcher.group(7) + " != " + branch);
        }
//        if (!matcher.group(8).equals(/*short hash*/)) {
//            throw new Error("Invalid version line: " + matcher.group(8) + " != " + "HUH");
//        }
        if (!matcher.group(9).equals(owner)) {
            throw new Error("Invalid version line: " + matcher.group(9) + " != " + owner);
        }
        if (!matcher.group(10).equals(repo)) {
            throw new Error("Invalid version line: " + matcher.group(10) + " != " + repo);
        }
        hash = matcher.group(11);
    }

    public boolean isValid(Path rootDir) {
        return Files.isRegularFile(rootDir.resolve(myBareMainMd()));
    }

    public void validate(Path rootDir) {
        if (!isValid(rootDir)) {
            throw new Error("Version " + version + " is not valid: " + rootDir.resolve(myBareMainMd()) + " does not exist");
        }
    }

    public String render() {
        String versionColumn = link(version, myBareMainLink());
        String branchColumn  = link("`" + branch + "`", "https://github.com/" + owner + "/" + repo + "/tree/" + branch);
        String linkColumn    = link("`" + hash.substring(0, 7) + "`", "https://github.com/" + owner + "/" + repo + "/tree/" + hash);
        return String.format("| %s | %s | %s | %s |", versionColumn, date, branchColumn, linkColumn);
    }

    @NotNull
    private String myBareMainMd() {
        return version + Wiki.SEPARATOR_MD + "main.md";
    }

    @NotNull
    private String myBareMainLink() {
        return version + Wiki.SEPARATOR_MD + "main";
    }

    private static String link(String text, String link) {
        return "[" + text + "](" + link + ")";
    }

    private static String linkPattern(String text, String link) {
        return "\\[" + text + "\\]\\(" + link + "\\)";
    }

    private static String uptoPattern(String upto) {
        return "([^" + upto + "]*)";
    }

    @Override
    public int compareTo(Version o) {
        return o.version.compareTo(version);
    }
}
