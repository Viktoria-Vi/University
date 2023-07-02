package org.dbs;

public class  Customer {
  public String customer_id;
  public String alt_id;
  public String company_name;
  public String contact_name;
  public String contact_title;

  public Customer(String id, String company, String contact, String title) {
    this.customer_id = id;
    this.company_name = company;
    this.contact_name = contact;
    this.contact_title = title;
  }
  public Customer(String id, String alt_id, String company, String contact, String title) {
    this.customer_id = id;
    this.alt_id = alt_id;
    this.company_name = company;
    this.contact_name = contact;
    this.contact_title = title;
  }

  public void setAltID(int companyChars, int contactChars) {
    // Aufgabe 5
  }

  @Override
  public String toString() {
    return "(Customer) " +
            "ID: " + customer_id +
            ", AltID: " + alt_id +
            ", Company: " + company_name +
            ", Contact: " + contact_name + " (" + contact_title + ")";
  }
}
