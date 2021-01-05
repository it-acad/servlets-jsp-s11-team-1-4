package com.softserve.itacademy.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.softserve.itacademy.model.Priority;
import com.softserve.itacademy.model.Task;
import com.softserve.itacademy.repository.TaskRepository;

@WebServlet("/create-task")
public class CreateTaskServlet extends HttpServlet {

    TaskRepository taskRepository;
    boolean nameAlreadyExists = false;

    @Override
    public void init() {
        taskRepository = TaskRepository.getTaskRepository();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/WEB-INF/pages/create-page.jsp");
        request.setAttribute("nameAlreadyExists", nameAlreadyExists);
        requestDispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String title = request.getParameter("taskName");
        Priority priority = Priority.valueOf(request.getParameter("priority").toUpperCase());
        Task task = new Task(title, priority);
        nameAlreadyExists = !taskRepository.create(task);
        response.sendRedirect("/create-task");
    }
}
