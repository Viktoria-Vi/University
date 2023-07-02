package org.dbs;

import org.postgresql.util.PSQLException;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CustomersDAO {
  Connection conn;
  public CustomersDAO(Connection connection) {
    this.conn = connection;
  }

  public List<Customer> findAll() throws SQLException {
    List<Customer> customers = new ArrayList<>();

    // Aufgabe 4

    return customers;
  }

  public List<Customer> findAllWithoutOrder() throws SQLException {
    List<Customer> customersWithoutOrder = new ArrayList<>();

    // Aufgabe 7

    return customersWithoutOrder;
  }

  public void updateAltID(List<Customer> customers) throws SQLException {
    // Aufgabe 5
  }

  public void deleteCustomer(String customerID, boolean force) throws SQLException {
    // Aufgabe 6
  }
}
