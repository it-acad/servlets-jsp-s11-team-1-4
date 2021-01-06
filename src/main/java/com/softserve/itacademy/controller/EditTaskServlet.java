package com.softserve.itacademy.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.softserve.itacademy.model.Priority;
import com.softserve.itacademy.model.Task;
import com.softserve.itacademy.repository.TaskRepository;

@WebServlet("/edit-task")
public class EditTaskServlet extends HttpServlet {
	
	private TaskRepository taskRepository;
	private Task taskForUpdating;
	@Override
	public void init() throws ServletException {
		taskRepository = TaskRepository.getTaskRepository();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/WEB-INF/pages/edit-task.jsp");
		taskForUpdating = taskRepository.read(Integer.parseInt(request.getParameter("id")));
        request.setAttribute("task", taskForUpdating);
        requestDispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		taskForUpdating.setTitle((String)request.getParameter("taskName"));
		taskForUpdating.setPriority(Priority.valueOf(request.getParameter("priority").toUpperCase()));
		taskRepository.update(taskForUpdating);
		response.sendRedirect("/tasks-list");
	}

}
