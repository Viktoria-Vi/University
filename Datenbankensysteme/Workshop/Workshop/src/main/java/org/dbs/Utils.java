package org.dbs;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class Utils {
  public static String removeWhitespaces(String s) {
    return s.replaceAll("\\s+","");
  }

  public static String capitalizeAll(String s) {
    return s.toUpperCase();
  }

  public static List<List<String>> parseCSV(String fileName) {
    List<List<String>> records = new ArrayList<>();
    try (BufferedReader br = new BufferedReader(new FileReader(fileName))) {
      String line;
      while ((line = br.readLine()) != null) {
        String[] values = line.replaceAll("'", "").split(",");
        records.add(Arrays.asList(values));
      }
    } catch (IOException e) {
      throw new RuntimeException(e);
    }
    return records;
  }

}
