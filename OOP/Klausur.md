Escape Sequenzen bei Strings (z.B  "\\\\\" für \\)

Strings sind nicht veränderbar, also jeweils neue Adresse im Stack

Stack Speicher Speichert einen Ablauf, Heap sowas wie Array Indizes

Math.pow, Math.abs, Math.sqrt

.equals verwenden

list.add,list.remove

   public static <T> void removeIf(ArrayList<T> list, Predicate<T> filter) 

public static Stream<String> words(String filePath) throws IOException {
        BufferedReader reader = new BufferedReader(new FileReader(filePath));
		reader.lines();
		reader.close();
}

public static void writeCountedWords(Map<String, Integer> countedWords, String filepath) {
        try (BufferedWriter bf = new BufferedWriter(new FileWriter(filepath))) {
            for (Map.Entry<String, Integer> entry : countedWords.entrySet()) {
                bf.write(entry.getKey() + " : " + entry.getValue());
                bf.newLine();
            }
            bf.flush();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

