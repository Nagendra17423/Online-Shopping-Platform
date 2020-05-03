package com.Controller;


import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Beans.Product;
import com.Beans.Users;
import com.service.AdminService;
import com.service.UserService;

public class ClientServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	HttpSession session;
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id=request.getParameter("id");
//		System.out.println(id);
		if(id==null)
		{
			request.setAttribute("msg", " ");
			request.getRequestDispatcher("ClientSide/Login.jsp").forward(request,response);
			
		}
		else
		{
			doPost(request, response);
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id=request.getParameter("id");
		System.out.println(id);
		session=request.getSession();
		AdminService as;
		if(id.equals("login")){
			Users u=new Users();
			String name=request.getParameter("name");
			String password=request.getParameter("password");
			u.setName(name);
			u.setPassword(password);
			UserService us=new UserService();
			boolean check=us.validatecustomer(u);
			if(check==true)
			{
				session.setAttribute("cart", "0");
				session.setAttribute("name", u.getName());
				request.getRequestDispatcher("ClientSide/home.jsp").forward(request, response);
				
			}
			else
			{
				request.setAttribute("msg", "invalid Credentials!!");
				request.getRequestDispatcher("ClientSide/Login.jsp").forward(request, response);
				
			}
			
		}
		if(id.equals("home"))
		{
			request.getRequestDispatcher("ClientSide/home.jsp").forward(request, response);
		}
		if(id.equals("about"))
		{
			request.getRequestDispatcher("ClientSide/home.jsp").forward(request, response);
			
		}
		if(id.equals("product"))
		{
			String category=request.getParameter("name");
			request.setAttribute("category", category);
			as=new AdminService();
			List<Product> prod=as.getproduct(category);
			request.setAttribute("product", prod);
			
			
			request.getRequestDispatcher("ClientSide/product.jsp").forward(request, response);
			
		}

	}

}
