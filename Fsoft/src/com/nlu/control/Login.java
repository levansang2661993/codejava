package com.nlu.control;

import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nlu.model.LoginM;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Login() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		String email_err = "";

		if (email == null) {
			email_err += "Ban chua nhap dia chi email.";
		} else {
			email = email.trim();
			if (email.equals("")) {
				email_err += "Ban chua nhap dia chi email !";
			} else {
				// Kiem tra email dung dinh dang
				Pattern patternObject = Pattern
						.compile("^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$");
				Matcher matcherObject = patternObject.matcher(email);
				if (!matcherObject.matches()) {
					email_err += "Dia chi email khong hop le!!!!!!!!!!!!!";
				}
			}
		}

		// PASSWORD
		String password_err = "";

		if (password == null) {
			password_err += "Ban chua nhap Password";
		} else {
			if (password.trim() == "") {
				password_err += "Ban chua nhap Password";
			}
		}

		String url = "";
		request.setAttribute("email", email);
		if (email_err.length() > 0 || password_err.length() > 0) {
			url = "/assignment1/login.jsp";
			request.setAttribute("email_err", email_err);
			request.setAttribute("password_err", password_err);
		} else {
			new LoginM();
			if (LoginM.checkLogin(email, password) == true) {
				url = "/assignment1/success.jsp";
			} else {
				url = "/assignment1/login.jsp";
			}

		}
		// goi chuyen trang
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
	}

}
