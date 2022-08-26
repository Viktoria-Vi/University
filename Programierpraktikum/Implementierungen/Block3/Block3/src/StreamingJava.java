import java.io.*;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.text.ParseException;
import java.time.LocalDate;
import java.util.*;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import java.util.stream.DoubleStream;
import java.util.stream.IntStream;
import java.util.stream.Stream;

public class StreamingJava {
    // Aufgabe 2) a)
    public static <E> Stream<E> flatStreamOf(List<List<E>> list) {
        return list.stream().flatMap(l -> l.stream().flatMap(m -> List.of(m).stream()));
    }

    // Aufgabe 2) b)
    public static <E> Stream<E> mergeStreamsOf(Stream<Stream<E>> stream) {
        return stream.reduce(Stream.empty(), Stream::concat);
    }

    // Aufgabe 2) c)
    public static <E extends Comparable<? super E>> E minOf(List<List<E>> list) throws NoSuchElementException {
        list.stream().map(it -> it.stream().min(Comparator.naturalOrder()).orElseThrow()).min(Comparator.naturalOrder()).orElseThrow();
        return null;
    }

    // Aufgabe 2) d)
    public static <E> E lastWithOf(Stream<E> stream, Predicate<? super E> predicate) {
        return stream.filter(predicate).reduce((a, b) -> b).get();

    }

    // Aufgabe 2) e)
    public static <E> Set<E> findOfCount(Stream<E> stream, int count) {
        return (stream.collect(Collectors.groupingBy(Function.identity(), Collectors.counting())))
                .entrySet().stream().filter(entry -> Objects.equals(entry.getValue(), count)).
                collect(Collectors.toMap(Map.Entry::getKey, Map.Entry::getValue)).keySet();
    }

    // Aufgabe 2) f)
    public static IntStream makeStreamOf(String[] strings) {
        Arrays.stream(strings).flatMapToInt(String::chars);

        return null;
    }

//-------------------------------------------------------------------------------------------------

    // Aufgabe 3) a)
    public static Stream<String> fileLines(String path) {
        ArrayList<String> strings = new ArrayList<>();
        try {
            BufferedReader reader = Files.newBufferedReader(Paths.get("NaturalGasBilling.csv"));
            reader.readLine();
            Stream<String> out = reader.lines();
            reader.close();
            System.out.println("Reader Closed");
            return out;
        } catch (IOException e) {
            throw new RuntimeException(e);
        }

    }

    // Aufgabe 3) b)
    public static double averageCost(Stream<String> lines) {
        ArrayList<String> cost = new ArrayList<>();
        try {
            BufferedReader reader = new BufferedReader(new InputStreamReader((InputStream) lines));
            String line = reader.readLine();
            while (line != null) {
                cost.add(line.split(",")[12]);
                reader.readLine();
            }
            return cost.stream().flatMapToDouble(d -> DoubleStream.of(Double.parseDouble(d))).average().getAsDouble();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    // Aufgabe 3) c)
    public static long countCleanEnergyLevy(Stream<String> stream) {
        ArrayList<String> CEL = new ArrayList<>();
        try {
            BufferedReader reader = new BufferedReader(new InputStreamReader((InputStream) stream));
            String line = reader.readLine();
            while (line != null) {
                if (Objects.equals(line.split(",")[11], "") || Objects.equals(line.split(",")[11], "0")) {
                    CEL.add(line.split(",")[11]);
                }
                reader.readLine();
            }
            return CEL.stream().count();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    // Aufgabe 3) d)
    public record NaturalGasBilling(LocalDate invoiceDate, LocalDate fromDate, LocalDate toDate, int billingDays,
                                    double billedGJ, double basicCharge, double deliveryCharges,
                                    double storeAndTransport,
                                    double commodityCharges, double tax, double cleanEnergyLevy,
                                    double carbonTax, double amount) {

        public NaturalGasBilling (LocalDate invoiceDate, LocalDate fromDate, LocalDate toDate, int billingDays,
        double billedGJ, double basicCharge, double deliveryCharges,
        double storeAndTransport,
        double commodityCharges, double tax, double cleanEnergyLevy,
        double carbonTax, double amount) {
            this.invoiceDate = invoiceDate;
            this.fromDate = fromDate;
            this.toDate = toDate;
            this.billingDays = billingDays;
            this.billedGJ = billedGJ;
            this.basicCharge = basicCharge;
            this.deliveryCharges = deliveryCharges;
            this.storeAndTransport = storeAndTransport;
            this.commodityCharges = commodityCharges;
            this.tax = tax;
            this.cleanEnergyLevy = cleanEnergyLevy;
            this.carbonTax = carbonTax;
            this.amount = amount;

        }

        public NaturalGasBilling(String[] strings) {
                    this(LocalDate.parse(strings[0]),
                    LocalDate.parse(strings[1]),
                    LocalDate.parse(strings[2]),
                    Integer.parseInt(strings[3]),
                    Double.parseDouble(strings[4]),
                    Double.parseDouble(strings[5]),
                    Double.parseDouble(strings[6]),
                    Double.parseDouble(strings[7]),
                    Double.parseDouble(strings[8]),
                    Double.parseDouble(strings[9]),
                    Double.parseDouble(strings[10]),
                    Double.parseDouble(strings[11]),
                    Double.parseDouble(strings[12]));
        }
    }

    public static Stream<NaturalGasBilling> orderByInvoiceDateDesc(Stream<String> stream) {
        return stream.map(line -> {
                    NaturalGasBilling naturalGasBilling = null;
            naturalGasBilling = new NaturalGasBilling(Arrays.stream(line.split(","))
                    .map(str -> str.isEmpty() ? "0" : str).toArray(String[]::new));
            return naturalGasBilling;
                }
        ).sorted(Comparator.comparing(NaturalGasBilling::invoiceDate).reversed());
    }

    // Aufgabe 3) e)
    // TODO: Implement object method: "Stream<Byte> toBytes()" for record "NaturalGasBilling".

    // Aufgabe 3) f)
    // TODO: Implement static method: "Stream<Byte> serialize(Stream<NaturalGasBilling> stream)".

    // Aufgabe 3) g)
    // TODO: Implement static method: "Stream<NaturalGasBilling> deserialize(Stream<Byte> stream)".
    // TODO: Execute the call: "deserialize(serialize(orderByInvoiceDateDesc(fileLines(Datei aus f))))"
    // TODO: in a main Method and print the output to the console.

    // Aufgabe 3) h)
    public static Stream<File> findFilesWith(String dir, String startsWith, String endsWith, int maxFiles) {
        // TODO

        return null;
    }
}
