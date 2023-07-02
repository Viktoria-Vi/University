package org.dbs;

import javax.swing.plaf.nimbus.State;
import java.io.File;
import java.sql.*;
import java.util.*;

public class Workshop {
    private final Connection conn;
    private final CustomersDAO customersDAO;

    public Workshop(Connection connection) {
        this.conn = connection;
        this.customersDAO = new CustomersDAO(connection);
    }

    public void listCategories() throws SQLException {
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT * FROM categories LIMIT 3");
        // Extract data from result set
        while (rs.next()) {
            // Retrieve by column name
            System.out.print("ID: " + rs.getInt("category_id"));
            System.out.print(", name: " + rs.getString("category_name") + "\n");
        }
    }

    public void listDetails(int productID) throws SQLException {
        String productName = "";
        String supplierCompanyName = "";
        String categoryName = "";
        String categoryDescription = "";
        int totalOrders = 0;
        float avgPrice = 0;
        Set<String> employeeNames = new HashSet<>();
        Set<String> shipperCompanyNames = new HashSet<>();
        HashMap<String,Integer> top5Customers = new HashMap<>();

        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery(
                "SELECT products.product_name," +
                        " suppliers.company_name AS s_company_name," +
                        " categories.category_name," +
                        " categories.description," +
                        " COUNT(ALL order_details.order_id) AS orders," +
                        " order_details.unit_price * (1 - order_details.discount) AS AVG_price," +
                        " employees.first_name AS e_first," +
                        " employees.last_name AS e_last," +
                        " shippers.company_name AS sh_company_name," +
                        " customers.customer_id AS customer_id ," +
                        " order_details.quantity, " +
                        " order_details.discount " +
                        "FROM products, categories, suppliers, order_details, orders, customers, employees, shippers " +
                        "WHERE products.product_id = " + productID + " " +
                        "AND products.supplier_id = suppliers.supplier_id " +
                        "AND products.category_id = categories.category_id " +
                        "AND products.product_id = order_details.product_id " +
                        "AND order_details.order_id = orders.order_id " +
                        "AND orders.ship_via = shippers.shipper_id " +
                        "AND orders.customer_id = customers.customer_id " +
                        "AND orders.employee_id = employees.employee_id " +
                        "GROUP BY products.product_name, suppliers.company_name, order_details.unit_price, categories.category_name, categories.description,customers.customer_id , employees.first_name, employees.last_name, shippers.company_name, order_details.quantity, order_details.discount "
                        );
        int total_products = 0;
        while (rs.next()) {
            productName = rs.getString("product_name");
            supplierCompanyName = rs.getString("s_company_name");
            categoryName = rs.getString("category_name");
            categoryDescription = rs.getString("description");
            totalOrders += rs.getInt("orders") ;
            avgPrice += rs.getFloat("AVG_price") * rs.getInt("quantity");
            employeeNames.add(rs.getString("e_first") + " " + rs.getString("e_last"));
            shipperCompanyNames.add(rs.getString("sh_company_name"));
            top5Customers.putIfAbsent(rs.getString("customer_id"), 0);
            top5Customers.put(rs.getString("customer_id"), top5Customers.get(rs.getString("customer_id")) + rs.getInt("quantity"));
            total_products += rs.getInt("quantity");
        }
        avgPrice = avgPrice / total_products;
        top5Customers = top5Customers.entrySet().stream().sorted(Map.Entry.comparingByValue(Comparator.reverseOrder())).limit(5).collect(HashMap::new, (m, e) -> m.put(e.getKey(), e.getValue()), Map::putAll);


        System.out.println("Details for product with ID " + productID);
        System.out.print("Product name: " + productName + "\n" +
                "Supplier: " + supplierCompanyName + "\n" +
                "Category name: " + categoryName + "\n" +
                "Category desc.: " + categoryDescription + "\n" +
                "Total orders: " + totalOrders + "\n" +
                "Average price: " + avgPrice + "\n" +
                "Employees involved: " + employeeNames.toString() + "\n" +
                "Shippers involved: " + shipperCompanyNames.toString() + "\n" +
                "Top 5 customers: " + top5Customers.toString());
    }

    public void insertEmployees(String fileName) throws SQLException {
        List<List<String>> employees = Utils.parseCSV(fileName);
        //write data from CSV to Hashmap, key = employee_id
        Integer employee_id = 0;
        Statement stmt = conn.createStatement();
        while(employees.iterator().hasNext()) {
            stmt.executeQuery("INSERT INTO employees (employee_id, last_name, first_name) VALUES (" +
                    ++employee_id +"," + employees.get(employee_id - 1).get(0) +"," + employees.get(employee_id - 1).get(1));

        }


    }

    public void listCustomers() throws SQLException {
        List<Customer> customers = this.customersDAO.findAll();
        for (Customer customer : customers) {
            System.out.println(customer.toString());
        }
    }

    public void updateCustomers(int companyChars, int contactChars) throws SQLException {
        // Aufgabe 5
    }

    public void deleteCustomer(String ID, boolean force) throws SQLException {
        this.customersDAO.deleteCustomer(ID, force);
    }

    public void addPromo(int productID) throws SQLException {
        // Aufgabe 7
    }

    public void insertUSState(String stateName) throws SQLException {
        // Aufgabe 8
    }
}
