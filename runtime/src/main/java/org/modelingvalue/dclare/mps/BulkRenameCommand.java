package org.modelingvalue.dclare.mps;

import org.modelingvalue.collections.util.QuadConsumer;

public class BulkRenameCommand {
    public final boolean                                       dry;
    public final boolean                                       inamedConcepts;
    public final boolean                                       allProperties;
    public final boolean                                       stringLiterals;
    public final int                                           row;
    public final String                                        fromPattern;
    public final String                                        toPattern;
    public final QuadConsumer<Integer, String, String, String> resultHandler;

    public BulkRenameCommand(boolean dry, boolean inamedConcepts, boolean allProperties, boolean stringLiterals, int row, String fromPattern, String toPattern, QuadConsumer<Integer, String, String, String> resultHandler) {
        this.dry            = dry;
        this.inamedConcepts = inamedConcepts;
        this.allProperties  = allProperties;
        this.stringLiterals = stringLiterals;
        this.row            = row;
        this.fromPattern    = fromPattern;
        this.toPattern      = toPattern;
        this.resultHandler  = resultHandler;
    }

    @SuppressWarnings("unused")
    public void change(String type, String from, String to) {
        resultHandler.accept(row, type, from, to);
        System.err.printf("  - %4d: %-20s: %-32s -> %s\n", row, type, from, to);
    }
}
