package main.java;

import java.sql.*;
import java.util.*;

public class imdbSuche {

    private final Connection conn;

    static String DB_URL = "jdbc:postgresql://";
    static String USER;
    static String PASS;

    public imdbSuche(Connection connection) {
        this.conn = connection;
    }


    public void movieSearch(String keyword) throws SQLException {
        Map<String, SortedSet<String>> movieAndActors = new HashMap<>();


        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery(
                "SELECT a.name AS actor_name, ac.name AS actress_name, m.title, m.year, string_agg(g.genre, ', ') AS genre " +
                        "FROM actor a " +
                        "JOIN movie m ON a.movie_id = m.mid " +
                        "JOIN actress ac ON m.mid = ac.movie_id " +
                        "JOIN genre g ON m.mid = g.movie_id " +
                        "WHERE m.title LIKE '%" + keyword + "%' " +
                        "GROUP BY a.name, ac.name, m.title, m.year " +
                        "ORDER BY actor_name ASC, title ASC; ");
        while (rs.next()) {
            String movie = rs.getString("title") + ", " + rs.getString("year") + ", " + rs.getString("genre");
            movieAndActors.putIfAbsent(movie, new TreeSet<>());
            movieAndActors.get(movie).add(rs.getString("actor_name"));
            movieAndActors.get(movie).add(rs.getString("actress_name"));

        }

        //Print
        System.out.println("Movies: ");
        movieAndActors.forEach(((x, y) -> {
            System.out.println(x);
            if (y.size() < 5){
                y.forEach(System.out :: println);
            }
            else {
                for (int i = 0; i < 5; i++) {
                    System.out.println(y.first());
                    y = y.tailSet(y.first() + 1);
                }
            }
        }
        ));
    }

    public void actorSearch(String keyword) throws SQLException {
        Map<String, SortedSet<String>> actorAndMovies = new HashMap<>();
        Map<String, SortedSet<String>> actorAndCoActs = new HashMap<>();
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery(
                "WITH found_actors AS ( " +
                        "SELECT a.name AS key_actor " +
                        "FROM actor a " +
                        "WHERE a.name LIKE '%" + keyword + "%' " +
                        "UNION " +
                        "SELECT ac.name AS key_actor " +
                        "FROM actress ac " +
                        "WHERE ac.name LIKE '%" + keyword + "%') " +
                        "SELECT f.key_actor, a.name AS co_actor_name, COUNT(*) AS num_common_movies, " +
                        "string_agg(m.title, '; ') AS common_movies " +
                        "FROM found_actors f " +
                        "JOIN actor a ON f.key_actor <> a.name AND a.movie_id IN ( " +
                        "SELECT movie_id " +
                        "FROM actor " +
                        "WHERE name = f.key_actor) " +
                        "JOIN movie m ON a.movie_id = m.mid " +
                        "GROUP BY f.key_actor, a.name " +
                        "ORDER BY num_common_movies DESC " +
                        "LIMIT 5; ");

        while (rs.next()) {
            actorAndMovies.putIfAbsent(rs.getString("key_actor"), new TreeSet<>());
            List<String> temp = new ArrayList<>();
            //add each common movie, split by comma
            String temp2 = rs.getString("common_movies");
            temp.addAll(Arrays.asList(temp2.split("; ")));
            //add each common movie to the set(without count)
            temp.forEach(x -> {
                try {
                    actorAndMovies.get(rs.getString("key_actor")).add(x);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
            });
            actorAndCoActs.putIfAbsent(rs.getString("key_actor"), new TreeSet<>());
            actorAndCoActs.get(rs.getString("key_actor")).add(rs.getString("co_actor_name") + " (" + rs.getString("num_common_movies") + ")");
        }

        //Print
        System.out.println("Actors: ");
        actorAndMovies.forEach((x, y) -> {
                    System.out.println(x);
                    System.out.println("Plays In :");
                    y.forEach(System.out::println);
                    System.out.println("Co-Actors: ");
                    actorAndCoActs.get(x).forEach(System.out::println);
                }
        );
    }

    public void imdbSuche(String keyword) throws SQLException {
        movieSearch(keyword);
        System.out.println();
        actorSearch(keyword);
    }

    public static void main(String[] args) throws SQLException {
        imdbSuche imdbSuche = null;
        String dbType = "";
        String server = "";
        int port = -1;
        String keyword = "";

        if(args.length == 0){
            dbType = "imdb";
            server = "localhost";
            port = 5432;
            PASS = "secret";
            USER = "alice";
            keyword = "Schwarz";
        }

        for (int i = 0; i < args.length; i++) {
            if (args[i].equals("-d") && i + 1 < args.length) {
                dbType = args[i + 1];
            } else if (args[i].equals("-s") && i + 1 < args.length) {
                server = args[i + 1];
            } else if (args[i].equals("-p") && i + 1 < args.length) {
                port = Integer.parseInt(args[i + 1]);
            } else if (args[i].equals("-u") && i + 1 < args.length) {
                USER = args[i + 1];
            } else if (args[i].equals("-pw") && i + 1 < args.length) {
                PASS = args[i + 1];
            } else if (args[i].equals("-k") && i + 1 < args.length) {
                keyword = args[i + 1];
            }
        }
        // Open a connection
        try {
            imdbSuche = new imdbSuche(DriverManager.getConnection(DB_URL + server + ":" + port + "/" + dbType , USER, PASS));
            System.out.println("Connected to database");
        } catch (SQLException e) {
            e.printStackTrace();
            System.exit(1);
        }


        System.out.println("Usage: java -jar imdbSuche.jar <"+ keyword+">");
        imdbSuche.imdbSuche(keyword);


    }
}

