package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DoctorDao;
import com.db.DBConnect;
import com.entity.Doctor;

@WebServlet("/addDoctor")
public class AddDoctor extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {

			String full_name = req.getParameter("full_name");
			String dob = req.getParameter("dob");
			String off_days = req.getParameter("off_days");
			String timing = req.getParameter("timing");
			String qualification = req.getParameter("qualification");
			String certificate_no = req.getParameter("certificate_no");
			String spec = req.getParameter("spec");
			String joining_date = req.getParameter("joining_date");
			String salary = req.getParameter("salary");
			String address = req.getParameter("address");
			String email = req.getParameter("email");
			String mobno = req.getParameter("mobno");
			String password = req.getParameter("password");

			Doctor d = new Doctor(full_name, dob, off_days, timing, qualification, certificate_no , spec, joining_date, salary , address, email, mobno,password);

			DoctorDao dao = new DoctorDao(DBConnect.getConn());
			HttpSession session = req.getSession();

			if (dao.registerDoctor(d)) {
				session.setAttribute("succMsg", "Doctor Added Sucessfully..");
				resp.sendRedirect("admin/doctor.jsp");
			} else {
				session.setAttribute("errorMsg", "something wrong on server");
				resp.sendRedirect("admin/doctor.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}