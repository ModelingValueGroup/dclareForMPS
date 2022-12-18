package org.modelingvalue.dclare.mps;

import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.KeyEvent;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;
import java.util.ArrayList;
import java.util.Locale;
import java.util.function.Consumer;
import java.util.stream.Stream;

import javax.swing.*;
import javax.swing.border.TitledBorder;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.TableCellRenderer;
import javax.swing.table.TableColumnModel;

public class BulkRenameDialog extends JDialog {
    private static final String                      SEPARATOR = "|";
    private              JPanel                      contentPane;
    private              JButton                     renameButton;
    private              JButton                     doneButton;
    private              JTable                      table;
    private              JTable                      resultTable;
    private              JButton                     loadButton;
    private              JButton                     saveButton;
    private              JButton                     plusButton;
    private              JButton                     minButton;
    private              JCheckBox                   inamedConceptsCheckbox;
    private              JCheckBox                   allPropertiesCheckbox;
    private              JCheckBox                   stringLiteralsCheckbox;
    private              JButton                     dryRunButton;
    private              JPanel                      resultPane;
    private final        Consumer<BulkRenameCommand> commandHandler;

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

    public BulkRenameDialog(Consumer<BulkRenameCommand> commandHandler) {
        this.commandHandler = commandHandler;
        prepareTable();
        prepareResultsTable();

        setContentPane(contentPane);
        setModal(true);
        setTitle("Bulk Rename Details");

        plusButton.addActionListener(e -> onPlus());
        minButton.addActionListener(e -> onMin());
        loadButton.addActionListener(e -> onLoad((e.getModifiers() & ActionEvent.SHIFT_MASK) != 0));
        saveButton.addActionListener(e -> onSave((e.getModifiers() & ActionEvent.SHIFT_MASK) != 0));
        renameButton.addActionListener(e -> onRename(false));
        dryRunButton.addActionListener(e -> onRename(true));
        doneButton.addActionListener(e -> onDone());

        KeyboardFocusManager.getCurrentKeyboardFocusManager().addKeyEventDispatcher(e -> {
            boolean haveValidFile = getDetailsFile() != null;
            boolean isShift       = e.getKeyCode() == KeyEvent.VK_SHIFT;
            boolean isPress       = e.getID() == KeyEvent.KEY_PRESSED;
            boolean isRelease     = e.getID() == KeyEvent.KEY_RELEASED;
            if ((!haveValidFile) || (isPress && isShift)) {
                loadButton.setText("Load");
                saveButton.setText("Save");
            }
            if (haveValidFile && (isRelease && isShift)) {
                loadButton.setText("Load...");
                saveButton.setText("Save...");
            }
            return false;
        });


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

    private void prepareTable() {
        String[]   columnNames = {"from", "to"};
        Object[][] data        = {};
        table.setModel(new DefaultTableModel(data, columnNames));
        table.setFillsViewportHeight(true);
        table.getTableHeader().setBackground(Color.LIGHT_GRAY);
        table.getTableHeader().setForeground(Color.BLACK);
        table.setRowHeight(26);
        table.setFont(new Font(Font.MONOSPACED, Font.PLAIN, 16));
        table.getTableHeader().setDefaultRenderer(new HeaderRenderer());

        JTextField editorField = new JTextField();
        editorField.setFont(new Font(Font.MONOSPACED, Font.PLAIN, 16));
        table.setDefaultEditor(Object.class, new DefaultCellEditor(editorField));
    }

    private void prepareResultsTable() {
        String[]   columnNames = {"#", "what", "from", "to"};
        Object[][] data        = {};
        resultTable.setModel(new DefaultTableModel(data, columnNames));
        resultTable.setFillsViewportHeight(true);
        resultTable.getTableHeader().setBackground(Color.LIGHT_GRAY);
        resultTable.getTableHeader().setForeground(Color.BLACK);
        resultTable.setRowHeight(26);
        resultTable.setFont(new Font(Font.MONOSPACED, Font.PLAIN, 16));
        resultTable.getTableHeader().setDefaultRenderer(new HeaderRenderer());

        resultTable.setDefaultEditor(Object.class, null);
        resultTable.setAutoResizeMode(JTable.AUTO_RESIZE_ALL_COLUMNS);

        resultPane.setVisible(false);
    }

    private void onPlus() {
        stopEditing();
        DefaultTableModel model = (DefaultTableModel) table.getModel();
        model.addRow(new Object[]{"from", "to"});
        table.requestFocus();
        if (table.editCellAt(model.getRowCount() - 1, 0)) {
            table.changeSelection(model.getRowCount() - 1, 0, false, false);
            table.getEditorComponent().requestFocusInWindow();
        }
    }

    private void onMin() {
        stopEditing();
        DefaultTableModel model = (DefaultTableModel) table.getModel();
        if (model.getRowCount() > 0) {
            int selectedRow = table.getSelectedRow();
            model.removeRow(selectedRow);
            if (model.getRowCount() > 0) {
                if (selectedRow < model.getRowCount()) {
                    table.setRowSelectionInterval(selectedRow, selectedRow);
                } else {
                    table.setRowSelectionInterval(model.getRowCount() - 1, model.getRowCount() - 1);
                }
            }
        }
    }

    private void onLoad(boolean shiftDown) {
        stopEditing();
        Path f = shiftDown ? getDetailsFile() : null;
        if (f == null) {
            JFileChooser chooser = new JFileChooser();
            chooser.setDialogTitle("Load Bulk Rename Details");
            chooser.setFileSelectionMode(JFileChooser.FILES_ONLY);
            chooser.setMultiSelectionEnabled(false);
            if (chooser.showOpenDialog(this) == JFileChooser.APPROVE_OPTION) {
                f = chooser.getSelectedFile().toPath();
                rememberDetailsFile(f);
            }
        }
        if (f != null) {
            try (Stream<String> lines = Files.lines(f)) {
                lines.forEach(l -> {
                    String[] split = l.split("[" + SEPARATOR + "]");
                    if (split.length == 2) {
                        DefaultTableModel model = (DefaultTableModel) table.getModel();
                        model.addRow(new Object[]{split[0], split[1], "-"});
                    }
                });
            } catch (IOException e) {
                JOptionPane.showMessageDialog(null, "Error reading file: " + e.getMessage());
            }
        }
    }

    private void onSave(boolean shiftDown) {
        stopEditing();
        Path    f              = shiftDown ? getDetailsFile() : null;
        boolean forceOverwrite = false;
        if (f == null) {
            JFileChooser chooser = new JFileChooser();
            chooser.setDialogTitle("Save Bulk Rename Details");
            chooser.setFileSelectionMode(JFileChooser.FILES_ONLY);
            chooser.setMultiSelectionEnabled(false);
            if (chooser.showSaveDialog(this) == JFileChooser.APPROVE_OPTION) {
                f = chooser.getSelectedFile().toPath();
                if (!f.toString().toLowerCase(Locale.ENGLISH).endsWith(".txt")) {
                    f = f.resolveSibling(f.getFileName() + ".txt");
                }
            }
        } else {
            forceOverwrite = true;
        }
        if (f != null) {
            if (Files.isRegularFile(f) && !forceOverwrite) {
                int result = JOptionPane.showConfirmDialog(this, "File already exists, overwrite?", "Save Bulk Rename Details", JOptionPane.YES_NO_OPTION);
                if (result != JOptionPane.YES_OPTION) {
                    return;
                }
            }
            try {
                DefaultTableModel      model = (DefaultTableModel) table.getModel();
                java.util.List<String> lines = new ArrayList<>();
                for (int i = 0; i < model.getRowCount(); i++) {
                    lines.add(model.getValueAt(i, 0) + SEPARATOR + model.getValueAt(i, 1));
                }
                Files.write(f, lines, StandardOpenOption.CREATE, StandardOpenOption.TRUNCATE_EXISTING);
                rememberDetailsFile(f);
            } catch (Throwable e) {
                e.printStackTrace();
            }
        }
    }

    private void onRename(boolean dry) {
        stopEditing();
        clearResultTable();
        boolean           inamedConcepts = inamedConceptsCheckbox.isSelected();
        boolean           allProperties  = allPropertiesCheckbox.isSelected();
        boolean           stringLiterals = stringLiteralsCheckbox.isSelected();
        DefaultTableModel model          = (DefaultTableModel) table.getModel();
        for (int row = 0; row < model.getRowCount(); row++) {
            String            from = (String) model.getValueAt(row, 0);
            String            to   = (String) model.getValueAt(row, 1);
            BulkRenameCommand cmd  = new BulkRenameCommand(dry, inamedConcepts, allProperties, stringLiterals, row, from, to, this::addResultRow);
            commandHandler.accept(cmd);
        }
        adjustColumnWidth(resultTable, 0, 64, 200);
        adjustColumnWidth(resultTable, 1, 64, 300);
    }

    private static void adjustColumnWidth(JTable table, int column, int minWidth, int maxWidth) {
        final TableColumnModel columnModel = table.getColumnModel();
        int                    width       = minWidth;
        for (int row = 0; row < table.getRowCount(); row++) {
            TableCellRenderer renderer = table.getCellRenderer(row, column);
            Component         comp     = table.prepareRenderer(renderer, row, column);
            width = Math.max(comp.getPreferredSize().width + 1, width);
        }
        if (maxWidth < width) {
            width = maxWidth;
        }
        columnModel.getColumn(column).setMaxWidth(width);
        columnModel.getColumn(column).setMinWidth(width);
        System.err.println("TOMTOMOM set col " + column + " width to " + width);
    }

    private void clearResultTable() {
        resultPane.setVisible(false);
        ((DefaultTableModel) resultTable.getModel()).setRowCount(0);
    }

    private void addResultRow(Integer row, String type, String from, String to) {
        ((DefaultTableModel) resultTable.getModel()).addRow(new Object[]{row, type, from, to});
        resultPane.setVisible(true);
    }

    private void onDone() {
        stopEditing();
        dispose();
    }

    private void rememberDetailsFile(Path f) {
        if (f != null && Files.isRegularFile(f)) {
            System.setProperty("BulkRenameDialog-detailsFile", f.toAbsolutePath().toString());
        }
    }

    private Path getDetailsFile() {
        String prop = System.getProperty("BulkRenameDialog-detailsFile");
        if (prop == null) {
            return null;
        }
        Path f = Paths.get(prop);
        if (!Files.isRegularFile(f)) {
            return null;
        }
        return f;
    }

    private void stopEditing() {
        if (table.getCellEditor() != null) {
            table.getCellEditor().stopCellEditing();
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
        panel2.setLayout(new FlowLayout(FlowLayout.CENTER, 5, 5));
        panel1.add(panel2, BorderLayout.WEST);
        plusButton = new JButton();
        plusButton.setIconTextGap(0);
        plusButton.setMaximumSize(new Dimension(36, 36));
        plusButton.setMinimumSize(new Dimension(36, 36));
        plusButton.setPreferredSize(new Dimension(36, 36));
        plusButton.setText("+");
        panel2.add(plusButton);
        minButton = new JButton();
        minButton.setMaximumSize(new Dimension(36, 36));
        minButton.setMinimumSize(new Dimension(36, 36));
        minButton.setPreferredSize(new Dimension(36, 36));
        minButton.setText("-");
        panel2.add(minButton);
        final JPanel panel3 = new JPanel();
        panel3.setLayout(new FlowLayout(FlowLayout.CENTER, 5, 5));
        panel1.add(panel3, BorderLayout.EAST);
        loadButton = new JButton();
        loadButton.setPreferredSize(new Dimension(78, 36));
        loadButton.setText("Load...");
        panel3.add(loadButton);
        saveButton = new JButton();
        saveButton.setPreferredSize(new Dimension(78, 36));
        saveButton.setText("Save...");
        panel3.add(saveButton);
        final JPanel panel4 = new JPanel();
        panel4.setLayout(new BorderLayout(0, 0));
        panel1.add(panel4, BorderLayout.CENTER);
        panel4.setBorder(BorderFactory.createTitledBorder(BorderFactory.createEmptyBorder(10, 10, 10, 10), null, TitledBorder.DEFAULT_JUSTIFICATION, TitledBorder.DEFAULT_POSITION, null, null));
        allPropertiesCheckbox = new JCheckBox();
        allPropertiesCheckbox.setText("all String properties of all Concepts");
        panel4.add(allPropertiesCheckbox, BorderLayout.CENTER);
        stringLiteralsCheckbox = new JCheckBox();
        stringLiteralsCheckbox.setText("all baselanguage StringLiterals");
        panel4.add(stringLiteralsCheckbox, BorderLayout.SOUTH);
        inamedConceptsCheckbox = new JCheckBox();
        inamedConceptsCheckbox.setSelected(true);
        inamedConceptsCheckbox.setText("all names of all INamedConcepts");
        panel4.add(inamedConceptsCheckbox, BorderLayout.NORTH);
        final JPanel panel5 = new JPanel();
        panel5.setLayout(new GridBagLayout());
        gbc         = new GridBagConstraints();
        gbc.gridx   = 0;
        gbc.gridy   = 1;
        gbc.weightx = 1.0;
        gbc.weighty = 1.0;
        gbc.fill    = GridBagConstraints.BOTH;
        gbc.insets  = new Insets(0, 10, 0, 10);
        contentPane.add(panel5, gbc);
        panel5.setBorder(BorderFactory.createTitledBorder(BorderFactory.createLineBorder(Color.black), null, TitledBorder.DEFAULT_JUSTIFICATION, TitledBorder.DEFAULT_POSITION, null, null));
        final JScrollPane scrollPane1 = new JScrollPane();
        gbc         = new GridBagConstraints();
        gbc.gridx   = 0;
        gbc.gridy   = 0;
        gbc.weightx = 1.0;
        gbc.weighty = 1.0;
        gbc.fill    = GridBagConstraints.BOTH;
        panel5.add(scrollPane1, gbc);
        table = new JTable();
        scrollPane1.setViewportView(table);
        final JPanel panel6 = new JPanel();
        panel6.setLayout(new BorderLayout(0, 0));
        gbc         = new GridBagConstraints();
        gbc.gridx   = 0;
        gbc.gridy   = 3;
        gbc.weightx = 1.0;
        gbc.fill    = GridBagConstraints.BOTH;
        gbc.insets  = new Insets(10, 0, 10, 0);
        contentPane.add(panel6, gbc);
        panel6.setBorder(BorderFactory.createTitledBorder(BorderFactory.createEmptyBorder(5, 5, 5, 5), null, TitledBorder.DEFAULT_JUSTIFICATION, TitledBorder.DEFAULT_POSITION, null, null));
        doneButton = new JButton();
        doneButton.setMaximumSize(new Dimension(78, 36));
        doneButton.setMinimumSize(new Dimension(78, 36));
        doneButton.setPreferredSize(new Dimension(78, 36));
        doneButton.setText("Done");
        panel6.add(doneButton, BorderLayout.EAST);
        final JPanel panel7 = new JPanel();
        panel7.setLayout(new FlowLayout(FlowLayout.CENTER, 0, 0));
        panel6.add(panel7, BorderLayout.WEST);
        renameButton = new JButton();
        renameButton.setMinimumSize(new Dimension(102, 36));
        renameButton.setPreferredSize(new Dimension(111, 36));
        renameButton.setText("Bulk Rename");
        panel7.add(renameButton);
        dryRunButton = new JButton();
        dryRunButton.setPreferredSize(new Dimension(83, 36));
        dryRunButton.setText("Dry Run");
        panel7.add(dryRunButton);
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
        scrollPane2.setViewportView(resultTable);
    }

    /**
     * @noinspection ALL
     */
    public JComponent $$$getRootComponent$$$() {
        return contentPane;
    }

}
