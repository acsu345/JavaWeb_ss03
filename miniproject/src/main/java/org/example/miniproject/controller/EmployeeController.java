package org.example.miniproject.controller;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.miniproject.models.Employee;

import java.util.List;
@WebServlet(name = "employee", value = "/employee")
public class EmployeeController extends HttpServlet{
    private List<Employee> employeeList;

        public void init() {
            employeeList = List.of(
                    new Employee("John Doe", "IT", 1, 50000),
                    new Employee("Jane" , "HR", 2, 45000),
                    new Employee("Joe", "Finance", 3 , 25000)
            );
        }


        protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws jakarta.servlet.ServletException, java.io.IOException {
            req.setAttribute("employee", employeeList);
            req.getRequestDispatcher("/WEB-INF/views/employee.jsp").forward(req, resp);

        }
}
