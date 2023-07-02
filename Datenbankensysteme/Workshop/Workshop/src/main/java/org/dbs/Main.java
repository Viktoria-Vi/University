package org.dbs;

import java.sql.*;

public class Main {
    static final String DB_URL = "jdbc:postgresql://localhost:5432/northwind";
    static final String USER = "workshop";
    static final String PASS = "secret";

    public static void main(String[] args) throws SQLException {
        Workshop ws = null;
        // Open a connection
        try {
            ws = new Workshop(DriverManager.getConnection(DB_URL, USER, PASS));
            System.out.println("Connected to database");
        } catch (SQLException e) {
            e.printStackTrace();
            System.exit(1);
        }

        if (args.length == 0) {
            ws.listCategories();
        }

        for (int i = 0; i < args.length; i++) {
            if ("--list-details".equals(args[i])) {
                ws.listDetails(Integer.parseInt(args[i + 1]));
            }
            else if ("--insert-employees".equals(args[i])) {
                ws.insertEmployees(args[i + 1]);
            }
            else if ("--list-customers".equals(args[i])) {
                ws.listCustomers();
            }
            else if ("--update-customers".equals(args[i])) {
                ws.updateCustomers(Integer.parseInt(args[i + 1]), Integer.parseInt(args[i + 2]));
            }
            else if ("--delete-customer".equals(args[i])) {
                boolean force = args.length > i + 2 && "-f".equals(args[i + 2]);
                ws.deleteCustomer(args[i + 1], force);
            }
            else if ("--promo".equals(args[i])) {
                ws.addPromo(Integer.parseInt(args[i + 1]));
            }
            else if ("--insert-state".equals(args[i])) {
                ws.insertUSState(args[i + 1]);
            }
        }
    }
}