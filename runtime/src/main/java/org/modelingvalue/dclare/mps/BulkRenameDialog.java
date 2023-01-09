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

package org.modelingvalue.dclare.mps;

import org.modelingvalue.collections.List;
import org.modelingvalue.collections.util.Pair;
import org.modelingvalue.dclare.mps.BulkRenameCommand.Rename;
import org.modelingvalue.dclare.mps.BulkRenameCommand.RenameResult;
import org.modelingvalue.json.Json;
import org.modelingvalue.json.JsonPrettyfier;

import java.awt.*;
import java.awt.datatransfer.DataFlavor;
import java.awt.datatransfer.StringSelection;
import java.awt.datatransfer.Transferable;
import java.awt.datatransfer.UnsupportedFlavorException;
import java.awt.event.ActionListener;
import java.awt.event.KeyEvent;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.function.Consumer;
import java.util.stream.Collectors;

import javax.swing.*;
import javax.swing.border.TitledBorder;
import javax.swing.table.AbstractTableModel;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.TableCellRenderer;
import javax.swing.table.TableColumnModel;

import com.intellij.uiDesigner.core.GridConstraints;
import com.intellij.uiDesigner.core.GridLayoutManager;

import static java.nio.file.StandardOpenOption.APPEND;
import static java.nio.file.StandardOpenOption.CREATE;
import static java.nio.file.StandardOpenOption.WRITE;

@SuppressWarnings("RegExpEmptyAlternationBranch")
public class BulkRenameDialog extends JDialog {
    private static final Path                        ACCU_FILE = Path.of("bulk-changes-performed.jsonl");
    private static final String                      SEPARATOR = "|";
    private              JPanel                      contentPane;
    private              JButton                     renameButton;
    private              JButton                     doneButton;
    private              JTable                      matchTable;
    private              JTable                      resultTable;
    private              JButton                     plusButton;
    private              JButton                     minButton;
    private              JButton                     clearButton;
    private              JCheckBox                   inamedConceptsCheckbox;
    private              JCheckBox                   allPropertiesCheckbox;
    private              JCheckBox                   stringLiteralsCheckbox;
    private              JButton                     dryRunButton;
    private              JPanel                      resultPane;
    private final        File                        projectDir;
    private final        Consumer<BulkRenameCommand> commandHandler;

    private void createUIComponents() {
    }

    public static class HeaderRenderer extends JLabel implements TableCellRenderer {
        @Override
        public Component getTableCellRendererComponent(JTable table, Object value, boolean isSelected, boolean hasFocus, int row, int column) {
            setFont(new Font("SansSerif", Font.BOLD, 18));
            setForeground(Color.black);
            setBackground(new Color(240, 255, 230, 255));
            setOpaque(true);
            setHorizontalAlignment(JLabel.LEFT);
            setText(value.toString());
            return this;
        }
    }

    public static class ChangeModel extends AbstractTableModel {
        private List<Rename> rows;

        public ChangeModel() {
            rows = List.of();
        }

        @Override
        public int getRowCount() {
            return rows.size();
        }

        @Override
        public int getColumnCount() {
            return 4;
        }

        public Rename getRow(int r) {
            return rows.get(r);
        }

        public List<Rename> getRows() {
            return rows;
        }

        @Override
        public Class<?> getColumnClass(int columnIndex) {
            switch (columnIndex) {
            case 0:
            case 1:
                return Boolean.class;
            case 2:
            case 3:
                return String.class;
            }
            throw new RuntimeException();
        }

        @Override
        public String getColumnName(int column) {
            switch (column) {
            case 0:
                return "enabled";
            case 1:
                return "regexp";
            case 2:
                return "from";
            case 3:
                return "to";
            }
            return null;
        }

        @Override
        public Object getValueAt(int r, int c) {
            Rename item = rows.get(r);
            switch (c) {
            case 0:
                return item.enabled;
            case 1:
                return item.regexp;
            case 2:
                return item.from;
            case 3:
                return item.to;
            }
            return null;
        }

        @Override
        public void setValueAt(Object v, int r, int c) {
            Rename item = rows.get(r);
            switch (c) {
            case 0:
                item.enabled = (boolean) v;
                break;
            case 1:
                item.regexp = (boolean) v;
                break;
            case 2:
                item.from = (String) v;
                break;
            case 3:
                item.to = (String) v;
                break;
            }
        }

        public void insert(int r, Rename item) {
            rows = rows.insert(r, item);
            fireTableRowsInserted(r, r);
        }

        public void remove(int r) {
            if (r <= rows.size()) {
                rows = rows.removeIndex(r);
                fireTableRowsDeleted(r, r);
            }
        }

        public void clear() {
            rows = List.of();
            fireTableDataChanged();
        }

        @Override
        public boolean isCellEditable(int r, int c) {
            return true;
        }
    }

    private ChangeModel getChangeModel() {
        return (ChangeModel) matchTable.getModel();
    }

    public BulkRenameDialog(File projectDir, Consumer<BulkRenameCommand> commandHandler) {
        this.projectDir     = projectDir;
        this.commandHandler = commandHandler;
        prepareMatchTable();
        prepareResultsTable();

        setContentPane(contentPane);
        setModal(true);
        setTitle("Bulk Rename Details");

        plusButton.addActionListener(e -> onPlus());
        minButton.addActionListener(e -> onMin());
        clearButton.addActionListener(e -> onClear());
        renameButton.addActionListener(e -> onRename(false));
        dryRunButton.addActionListener(e -> onRename(true));
        doneButton.addActionListener(e -> onDone());

        setDefaultCloseOperation(DO_NOTHING_ON_CLOSE);
        addWindowListener(new WindowAdapter() {
            public void windowClosing(WindowEvent e) {
                onDone();
            }

            @Override
            public void windowOpened(WindowEvent e) {
                SwingUtilities.invokeLater(() -> onPlus());
            }
        });

        contentPane.registerKeyboardAction(e -> onDone(), KeyStroke.getKeyStroke(KeyEvent.VK_ESCAPE, 0), JComponent.WHEN_ANCESTOR_OF_FOCUSED_COMPONENT);

        setSize(1000, 700);
        setVisible(true);
    }

    private void prepareMatchTable() {
        pepareTable(matchTable, new ChangeModel());
        addKeyAction("Cut", KeyEvent.VK_X, matchTable, this::bulkCut);
        addKeyAction("Copy", KeyEvent.VK_C, matchTable, this::bulkCopy);
        addKeyAction("Paste", KeyEvent.VK_V, matchTable, this::bulkPaste);

        //        JCheckBox  boolField = new JCheckBox();
        JTextField textField = new JTextField();
        textField.setFont(new Font(Font.MONOSPACED, Font.PLAIN, 16));

        TableColumnModel columnModel = matchTable.getColumnModel();
        //        columnModel.getColumn(0).setCellEditor(new DefaultCellEditor(boolField));
        //        columnModel.getColumn(1).setCellEditor(new DefaultCellEditor(boolField));
        columnModel.getColumn(2).setCellEditor(new DefaultCellEditor(textField));
        columnModel.getColumn(3).setCellEditor(new DefaultCellEditor(textField));

        // make background of existing cells opaque white:
        Component tableCellRendererComponent = matchTable.getDefaultRenderer(Object.class).getTableCellRendererComponent(matchTable, "", false, false, 0, 0);
        if (tableCellRendererComponent instanceof JLabel) {
            JLabel label = (JLabel) tableCellRendererComponent;
            label.setBackground(Color.white);
            label.setOpaque(true);
        }
        adjustColumnWidth(matchTable, 0, 64, 200);
        adjustColumnWidth(matchTable, 1, 64, 200);
    }

    private void prepareResultsTable() {
        DefaultTableModel model = new DefaultTableModel(new Object[][]{}, new String[]{"#",
                "what",
                "from",
                "to",
                "model",
                "node"}) {
            @Override
            public Class<?> getColumnClass(int col) {
                return col == 0 ? Integer.class : String.class;
            }
        };
        pepareTable(resultTable, model);

        resultTable.setDefaultEditor(Object.class, null);
        resultTable.setAutoResizeMode(JTable.AUTO_RESIZE_ALL_COLUMNS);

        resultPane.setVisible(false);
    }

    private void pepareTable(JTable table, AbstractTableModel model) {
        table.setModel(model);
        table.setFillsViewportHeight(true);
        table.getTableHeader().setBackground(Color.LIGHT_GRAY);
        table.getTableHeader().setForeground(Color.BLACK);
        table.setRowHeight(26);
        table.setFont(new Font(Font.MONOSPACED, Font.PLAIN, 16));
        table.getTableHeader().setDefaultRenderer(new HeaderRenderer());
    }

    private void onPlus() {
        stopEditing();
        int newRow = matchTable.getSelectedRow() + 1;
        getChangeModel().insert(newRow, new Rename(true, false, "from", "to"));
        matchTable.requestFocus();
        if (matchTable.editCellAt(newRow, 1)) {
            matchTable.changeSelection(newRow, 0, false, false);
            ((JTextField) matchTable.getEditorComponent()).selectAll();
            matchTable.getEditorComponent().requestFocusInWindow();
        }
    }

    private void onMin() {
        stopEditing();
        if (0 < getChangeModel().getRowCount()) {
            int[] selectedRows = matchTable.getSelectedRows();
            if (0 < selectedRows.length) {
                for (int i = selectedRows.length - 1; 0 <= i; i--) {
                    getChangeModel().remove(selectedRows[i]);
                }
                if (getChangeModel().getRowCount() > 0) {
                    if (selectedRows[0] < getChangeModel().getRowCount()) {
                        matchTable.setRowSelectionInterval(selectedRows[0], selectedRows[0]);
                    } else {
                        matchTable.setRowSelectionInterval(getChangeModel().getRowCount() - 1, getChangeModel().getRowCount() - 1);
                    }
                }
            }
        }
    }

    private void onClear() {
        stopEditing();
        getChangeModel().clear();
        clearResultTable();
    }

    private void onRename(boolean dry) {
        stopEditing();
        boolean                     inamedConcepts = inamedConceptsCheckbox.isSelected();
        boolean                     allProperties  = allPropertiesCheckbox.isSelected();
        boolean                     stringLiterals = stringLiteralsCheckbox.isSelected();
        List<Pair<Integer, Rename>> changes        = List.of();
        for (int row = 0; row < getChangeModel().getRowCount(); row++) {
            Rename c = getChangeModel().getRow(row);
            if (c.enabled && !c.from.isEmpty()) {
                changes = changes.append(Pair.of(row, c));
            }
        }

        clearResultTable();
        commandHandler.accept(new BulkRenameCommand(dry, inamedConcepts, allProperties, stringLiterals, changes, this::addResultRow));
        adjustColumnWidth(resultTable, 0, 64, 200);
        adjustColumnWidth(resultTable, 1, 64, 300);

        if (!dry) {
            try {
                Path f = projectDir.toPath().resolve(ACCU_FILE);
                Files.writeString(f, getEnabledAsJson(), WRITE, APPEND, CREATE);
                System.err.println("INFO: bulk changes appended to: " + f.toAbsolutePath());
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    private void onDone() {
        stopEditing();
        dispose();
    }

    private void clearResultTable() {
        resultPane.setVisible(false);
        ((DefaultTableModel) resultTable.getModel()).setRowCount(0);
    }

    private void addResultRow(RenameResult result) {
        String rowsRender = result.rows.map(i -> "" + i).collect(Collectors.joining(" "));
        ((DefaultTableModel) resultTable.getModel()).addRow(new Object[]{rowsRender,
                result.type,
                result.from,
                result.to,
                result.modelName,
                result.nodeName});
        resultPane.setVisible(true);
    }

    @SuppressWarnings("SameParameterValue")
    private static void adjustColumnWidth(JTable table, int column, int minWidth, int maxWidth) {
        final TableColumnModel columnModel = table.getColumnModel();
        int                    width       = minWidth;
        Object                 headerValue = table.getColumnModel().getColumn(column).getHeaderValue();
        TableCellRenderer      hdrRenderer = table.getTableHeader().getDefaultRenderer();
        Component              hdrComp     = hdrRenderer.getTableCellRendererComponent(table, headerValue, false, false, 0, column);
        width = Math.max(hdrComp.getPreferredSize().width + 8, width);
        for (int row = 0; row < table.getRowCount(); row++) {
            TableCellRenderer renderer = table.getCellRenderer(row, column);
            Component         comp     = table.prepareRenderer(renderer, row, column);
            width = Math.max(comp.getPreferredSize().width + 4, width);
        }
        if (maxWidth < width) {
            width = maxWidth;
        }
        columnModel.getColumn(column).setMaxWidth(width);
        columnModel.getColumn(column).setMinWidth(width);
        columnModel.getColumn(column).setPreferredWidth(width);
    }

    private void addKeyAction(String name, int key, JComponent component, Runnable action) {
        ActionListener l = e -> {
            if (e.getActionCommand().equals(name)) {
                action.run();
            }
        };
        KeyStroke stroke = KeyStroke.getKeyStroke(key, Toolkit.getDefaultToolkit().getMenuShortcutKeyMaskEx());
        component.registerKeyboardAction(l, name, stroke, JComponent.WHEN_FOCUSED);
    }

    private void bulkCut() {
        bulkCopy();
        int[] selectedRows = matchTable.getSelectedRows();
        for (int i = selectedRows.length - 1; 0 <= i; i--) {
            getChangeModel().remove(selectedRows[i]);
        }
    }

    private void bulkCopy() {
        getToolkit().getSystemClipboard().setContents(new StringSelection(getSelectedAsJson()), null);
    }

    private String getSelectedAsJson() {
        List<Rename> l = List.of();
        for (int row : matchTable.getSelectedRows()) {
            l = l.add(getChangeModel().getRow(row));
        }
        return JsonPrettyfier.pretty(Json.toJson(l));
    }

    private String getEnabledAsJson() {
        List<Rename> l = List.of();
        for (Rename r : getChangeModel().getRows()) {
            if (r.enabled) {
                l = l.add(r);
            }
        }
        return JsonPrettyfier.pretty(Json.toJson(l));
    }

    private void bulkPaste() {
        try {
            Transferable contents = getToolkit().getSystemClipboard().getContents(null);
            String       s        = (String) contents.getTransferData(DataFlavor.stringFlavor);
            int          insertAt = matchTable.getSelectedRow() == -1 ? matchTable.getRowCount() : matchTable.getSelectedRow();
            if (s.startsWith("[")) {
                for (Rename c : Json.<java.util.List<Rename>> fromJson(Rename.getListType(), s)) {
                    getChangeModel().insert(insertAt++, c);
                }
            } else {
                String[] lines = s.split("\\r?\\n");
                for (String line : lines) {
                    String[] columns = line.split("[" + SEPARATOR + "]");
                    Rename   rowData;
                    if (columns.length == 2) {
                        rowData = new Rename(true, false, columns[0], columns[1]);
                    } else if (columns.length == 3) {
                        rowData = new Rename(true, columns[0].matches("(t|r|true)"), columns[1], columns[2]);
                    } else {
                        rowData = new Rename(false, false, line, "");
                    }
                    getChangeModel().insert(insertAt++, rowData);
                }
            }
        } catch (IOException | UnsupportedFlavorException e) {
            System.err.println("WARNING: paste resulted in: " + e.getClass().getSimpleName() + " - " + e.getMessage());
        }
    }

    private void stopEditing() {
        if (matchTable.getCellEditor() != null) {
            matchTable.getCellEditor().stopCellEditing();
        }
    }

    {
        // GUI initializer generated by IntelliJ IDEA GUI Designer
        // >>> IMPORTANT!! <<<
        // DO NOT EDIT OR ADD ANY CODE HERE!
        $$$setupUI$$$();
    }

    /**
     * Method generated by IntelliJ IDEA GUI Designer
     * >>> IMPORTANT!! <<<
     * DO NOT edit this method OR call it in your code!
     *
     * @noinspection ALL
     */
    private void $$$setupUI$$$() {
        contentPane = new JPanel();
        contentPane.setLayout(new GridBagLayout());
        contentPane.setBorder(BorderFactory.createTitledBorder(BorderFactory.createEmptyBorder(5, 5, 5, 5), null, TitledBorder.DEFAULT_JUSTIFICATION, TitledBorder.DEFAULT_POSITION, null, null));
        final JPanel panel1 = new JPanel();
        panel1.setLayout(new BorderLayout(0, 0));
        GridBagConstraints gbc;
        gbc        = new GridBagConstraints();
        gbc.gridx  = 0;
        gbc.gridy  = 0;
        gbc.fill   = GridBagConstraints.BOTH;
        gbc.insets = new Insets(10, 10, 10, 10);
        contentPane.add(panel1, gbc);
        final JPanel panel2 = new JPanel();
        panel2.setLayout(new GridLayoutManager(1, 3, new Insets(0, 0, 0, 0), -1, -1));
        panel1.add(panel2, BorderLayout.WEST);
        plusButton = new JButton();
        plusButton.setIconTextGap(0);
        plusButton.setMaximumSize(new Dimension(36, 36));
        plusButton.setMinimumSize(new Dimension(36, 36));
        plusButton.setPreferredSize(new Dimension(36, 36));
        plusButton.setText("+");
        panel2.add(plusButton, new GridConstraints(0, 0, 1, 1, GridConstraints.ANCHOR_SOUTH, GridConstraints.FILL_NONE, GridConstraints.SIZEPOLICY_CAN_SHRINK | GridConstraints.SIZEPOLICY_CAN_GROW, GridConstraints.SIZEPOLICY_CAN_SHRINK | GridConstraints.SIZEPOLICY_CAN_GROW, null, null, null, 0, false));
        minButton = new JButton();
        minButton.setMaximumSize(new Dimension(36, 36));
        minButton.setMinimumSize(new Dimension(36, 36));
        minButton.setPreferredSize(new Dimension(36, 36));
        minButton.setText("-");
        panel2.add(minButton, new GridConstraints(0, 1, 1, 1, GridConstraints.ANCHOR_SOUTH, GridConstraints.FILL_NONE, GridConstraints.SIZEPOLICY_CAN_SHRINK | GridConstraints.SIZEPOLICY_CAN_GROW, GridConstraints.SIZEPOLICY_CAN_SHRINK | GridConstraints.SIZEPOLICY_CAN_GROW, null, null, null, 0, false));
        clearButton = new JButton();
        clearButton.setMaximumSize(new Dimension(36, 36));
        clearButton.setMinimumSize(new Dimension(36, 36));
        clearButton.setPreferredSize(new Dimension(36, 36));
        clearButton.setText("X");
        panel2.add(clearButton, new GridConstraints(0, 2, 1, 1, GridConstraints.ANCHOR_SOUTH, GridConstraints.FILL_NONE, GridConstraints.SIZEPOLICY_CAN_SHRINK | GridConstraints.SIZEPOLICY_CAN_GROW, GridConstraints.SIZEPOLICY_CAN_SHRINK | GridConstraints.SIZEPOLICY_CAN_GROW, null, null, null, 0, false));
        final JPanel panel3 = new JPanel();
        panel3.setLayout(new GridBagLayout());
        gbc         = new GridBagConstraints();
        gbc.gridx   = 0;
        gbc.gridy   = 1;
        gbc.weightx = 1.0;
        gbc.weighty = 1.0;
        gbc.fill    = GridBagConstraints.BOTH;
        gbc.insets  = new Insets(0, 10, 0, 10);
        contentPane.add(panel3, gbc);
        panel3.setBorder(BorderFactory.createTitledBorder(BorderFactory.createLineBorder(Color.black), null, TitledBorder.DEFAULT_JUSTIFICATION, TitledBorder.DEFAULT_POSITION, null, null));
        final JScrollPane scrollPane1 = new JScrollPane();
        gbc         = new GridBagConstraints();
        gbc.gridx   = 0;
        gbc.gridy   = 0;
        gbc.weightx = 1.0;
        gbc.weighty = 1.0;
        gbc.fill    = GridBagConstraints.BOTH;
        panel3.add(scrollPane1, gbc);
        matchTable = new JTable();
        matchTable.setBackground(new Color(-1052180));
        scrollPane1.setViewportView(matchTable);
        final JPanel panel4 = new JPanel();
        panel4.setLayout(new BorderLayout(0, 0));
        gbc         = new GridBagConstraints();
        gbc.gridx   = 0;
        gbc.gridy   = 3;
        gbc.weightx = 1.0;
        gbc.fill    = GridBagConstraints.BOTH;
        contentPane.add(panel4, gbc);
        panel4.setBorder(BorderFactory.createTitledBorder(BorderFactory.createEmptyBorder(5, 5, 5, 5), null, TitledBorder.DEFAULT_JUSTIFICATION, TitledBorder.DEFAULT_POSITION, null, null));
        final JPanel panel5 = new JPanel();
        panel5.setLayout(new BorderLayout(0, 0));
        panel4.add(panel5, BorderLayout.WEST);
        final JPanel panel6 = new JPanel();
        panel6.setLayout(new GridBagLayout());
        panel5.add(panel6, BorderLayout.WEST);
        renameButton = new JButton();
        renameButton.setMinimumSize(new Dimension(102, 36));
        renameButton.setPreferredSize(new Dimension(111, 36));
        renameButton.setText("Bulk Rename");
        gbc       = new GridBagConstraints();
        gbc.gridx = 0;
        gbc.gridy = 0;
        panel6.add(renameButton, gbc);
        final JPanel panel7 = new JPanel();
        panel7.setLayout(new GridBagLayout());
        panel5.add(panel7, BorderLayout.CENTER);
        dryRunButton = new JButton();
        dryRunButton.setPreferredSize(new Dimension(83, 36));
        dryRunButton.setText("Dry Run");
        gbc       = new GridBagConstraints();
        gbc.gridx = 0;
        gbc.gridy = 0;
        panel7.add(dryRunButton, gbc);
        final JPanel panel8 = new JPanel();
        panel8.setLayout(new BorderLayout(0, 0));
        panel4.add(panel8, BorderLayout.CENTER);
        panel8.setBorder(BorderFactory.createTitledBorder(BorderFactory.createEmptyBorder(10, 10, 10, 10), null, TitledBorder.DEFAULT_JUSTIFICATION, TitledBorder.DEFAULT_POSITION, null, null));
        allPropertiesCheckbox = new JCheckBox();
        allPropertiesCheckbox.setText("all String properties of all Concepts");
        panel8.add(allPropertiesCheckbox, BorderLayout.CENTER);
        stringLiteralsCheckbox = new JCheckBox();
        stringLiteralsCheckbox.setText("all baselanguage StringLiterals");
        panel8.add(stringLiteralsCheckbox, BorderLayout.SOUTH);
        inamedConceptsCheckbox = new JCheckBox();
        inamedConceptsCheckbox.setSelected(true);
        inamedConceptsCheckbox.setText("all names of all INamedConcepts");
        panel8.add(inamedConceptsCheckbox, BorderLayout.NORTH);
        final JPanel panel9 = new JPanel();
        panel9.setLayout(new GridBagLayout());
        panel4.add(panel9, BorderLayout.EAST);
        doneButton = new JButton();
        doneButton.setMaximumSize(new Dimension(78, 36));
        doneButton.setMinimumSize(new Dimension(78, 36));
        doneButton.setPreferredSize(new Dimension(78, 36));
        doneButton.setText("Done");
        gbc       = new GridBagConstraints();
        gbc.gridx = 0;
        gbc.gridy = 0;
        panel9.add(doneButton, gbc);
        resultPane = new JPanel();
        resultPane.setLayout(new GridBagLayout());
        gbc         = new GridBagConstraints();
        gbc.gridx   = 0;
        gbc.gridy   = 2;
        gbc.weightx = 1.0;
        gbc.weighty = 1.0;
        gbc.fill    = GridBagConstraints.BOTH;
        gbc.insets  = new Insets(5, 10, 0, 10);
        contentPane.add(resultPane, gbc);
        resultPane.setBorder(BorderFactory.createTitledBorder(BorderFactory.createLineBorder(Color.black), null, TitledBorder.DEFAULT_JUSTIFICATION, TitledBorder.DEFAULT_POSITION, null, null));
        final JScrollPane scrollPane2 = new JScrollPane();
        gbc         = new GridBagConstraints();
        gbc.gridx   = 0;
        gbc.gridy   = 0;
        gbc.weightx = 1.0;
        gbc.weighty = 1.0;
        gbc.fill    = GridBagConstraints.BOTH;
        resultPane.add(scrollPane2, gbc);
        resultTable = new JTable();
        resultTable.setBackground(new Color(-1052180));
        scrollPane2.setViewportView(resultTable);
    }

    /**
     * @noinspection ALL
     */
    public JComponent $$$getRootComponent$$$() {
        return contentPane;
    }

}
