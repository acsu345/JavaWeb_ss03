package org.example.miniproject.models;

public class Employee{
    private String fullName;
    private String department;
    private int id;
    private double salary;

    public Employee() {
    }

    public Employee(String fullName, String department, int id, double salary) {
        this.fullName = fullName;
        this.department = department;
        this.id = id;
        this.salary = salary;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public double getSalary() {
        return salary;
    }

    public void setSalary(double salary) {
        this.salary = salary;
    }
}
