package src.PPClean.Data;

import src.PPClean.Helper;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;

import static src.PPClean.Configuration.CONTROL_CHAR;
import static src.PPClean.Configuration.DATA_SEPARATOR;


/**
 * Data structure to represent a data table
 */
public class Table {
    private List<String> attributes;
    private List<Record> data;

    /**
     * @param attributes List of attribute names
     * @param data List of same-sized records
     */
    private Table(List<String> attributes, List<Record> data) {
        this.attributes = attributes;
        this.data = data;
    }

    /**
     * Reads a CSV-like file and parses every line as a table row
     * It is assumed that the first row is a header row (=attributes)
     * @param pathToFile Absolute or relative path to the input file
     * @param dataSeparator Separator between data points (e.g., comma for CSV)
     * @return Table instance representing given file
     */
    protected static Table createFromFile(String pathToFile, String dataSeparator) {
        Table table = null;
        try (BufferedReader Reader = new BufferedReader(new FileReader(pathToFile))) {
            String firstLine = Reader.readLine().replaceAll(CONTROL_CHAR, "");
            List<String> attributes = new ArrayList<>(Arrays.asList(firstLine.split(dataSeparator)));
            List<Record> data = new ArrayList<>();
            String line = null;
            while ((line = Reader.readLine()) != null) {
                line = line.replaceAll(CONTROL_CHAR, "");
                List<String> recordValues = new ArrayList<>(Arrays.asList(line.split(dataSeparator)));
                Record record = new Record(recordValues);
                data.add(record);
            }
            table = new Table(attributes, data);
        } catch (Exception e) {
            System.out.printf("Could not read input data from %s%n", pathToFile);
        }

        return table;
    }

    /**
     * @param pathOutputData Absolute or relative path, including file name, where the table should be written to
     */
    public void writeToFile(String pathOutputData) {
        try {
            PrintWriter out = new PrintWriter(pathOutputData);
            out.println(this.toString());
        } catch (FileNotFoundException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * Deletes a column from the table
     * @param attributeIndex Position of the attribute to remove
     */
    public void dropColumn(int attributeIndex) {
        this.getAttributes().remove(attributeIndex);
        List<Record> records = this.getData();
        for (Record record : records) {
            record.getContent().remove(attributeIndex);
        }
    }

    /**
     * @param attributeIndex Position of the attribute to sort by (ascending)
     */
    public void sortByAttribute(int attributeIndex) {
        List<Record> records = this.getData();
        int n = records.size();
        for (int i = 0; i < n - 1; i++) {
            for (int j = 0; j < n - i - 1; j++) {
                String attribute_j = records.get(j).getContent().get(attributeIndex);
                String attribute_jPlus1 = records.get(j+1).getContent().get(attributeIndex);
                if (Helper.isStringGreater(attribute_j, attribute_jPlus1)) {
                    // swap Record j+1 and Record j
                    Record temp = records.get(j);
                    records.set(j, records.get(j+1));
                    records.set(j+1, temp);
                }
            }
        }
    }

    /**
     * Generates and sets a key based on the content of the records
     * For key generation, whitespaces are omitted
     * The key components are concatenated in the order they appear in the Record's content
     * @param keyComponents Each component indicates how many characters of the content
     *                      value at the same list position are integrated in the key
     *                      Enter 0 to omit a Record value
     */
    public void generateKeys(int[] keyComponents) {
        for (Record record : this.data) {
            record.generateKey(keyComponents);
        }
    }

    public void sortByKey() {
        this.data.sort(Comparator.comparing(Record::getKey));
    }

    public List<Record> getData() {
        return data;
    }

    public void setData(List<Record> data) {
        this.data = data;
    }

    public List<String> getAttributes() {
        return attributes;
    }

    @Override
    public String toString() {
        StringBuilder str = new StringBuilder();
        for (int i = 0; i < attributes.size(); i++) {
            str.append(attributes.get(i));
            if (i + 1 < attributes.size()) { // not the last element
                str.append(DATA_SEPARATOR);
            } else { // last element, add newline character
                str.append("\n");
            }
        }
        for (int j = 0; j < data.size(); j++) {
            str.append(data.get(j).toString());
        }
        return str.toString();
    }
}
