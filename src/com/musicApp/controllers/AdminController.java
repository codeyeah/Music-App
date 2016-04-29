package com.musicApp.controllers;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.techzoo.aqsa.View;

import com.musicApp.beans.Request;
import com.musicApp.beans.User;
import com.musicApp.common.Literals;
import com.musicApp.common.Message;
import com.musicApp.utils.ConnectionUtils;

public class AdminController extends BaseController {
	

	@Override
	public View execute(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String action = request.getParameter("action")!= null ? request.getParameter("action") : "view"; 
		
		if(action.equals("login")){
			String query = "SELECT id, name, email, type FROM tbl_users WHERE name = ? " +
					"AND pwd = PASSWORD(?) AND type = 'ADMIN'";
			Connection con = ConnectionUtils.getConnection();
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, request.getParameter("name"));
			ps.setString(2, request.getParameter("password"));
			ResultSet rs = ps.executeQuery();
			User u = null;
			while(rs.next()) {
				u = new User();
				u.setId(rs.getInt(1));
				u.setName(rs.getString(2));
				u.setEmail(rs.getString(3));
				u.setUserType(rs.getString(4));
			}
			if(con != null) 
				con.close();
			if(u != null) {
				HttpSession session = request.getSession();
				session.setAttribute(Literals.USER_DETAILS, u);
				session.setAttribute(Literals.MODULE, Literals.ADMIN_MODULE);
				return new View("success");
			}
			else {
				return new View("error");
			}
		} 
		else if(action.equals("main")){
			return new View("main");
		}
		else if(action.equals("logout")) {
			
			HttpSession session = request.getSession();
			if(session.getAttribute(Literals.USER_DETAILS) != null){
				session.removeAttribute(Literals.USER_DETAILS);
				session.removeAttribute(Literals.MODULE);
			}
			Message m = new Message();
			m.setMessageType(Message.SUCCESS);
			m.setHeader("Logout Succuessful.");
			m.setDescription("You have successfully logged-out from the App. <br/>" +
					"You can <a href=\"admin.do?action=view\">Login Now</a>");
			Map<String, Message> map = new HashMap<String, Message>();
			map.put(Literals.MESSAGE, m);
			Cookie[] cookies = request.getCookies();
		    if (cookies != null)
		        for (int i = 0; i < cookies.length; i++) {
		            cookies[i].setValue("");
		            cookies[i].setPath("/");
		            cookies[i].setMaxAge(0);
		            response.addCookie(cookies[i]);
		        }
			return new View("message", map);

		}
		else if(action.equals("request")) {
			List<Request> requests = getAllRequestById(0, true);
			Map<String, List<Request>> map = new HashMap<String, List<Request>>();
			map.put(Literals.REQUEST_LIST, requests);
			return new View("request", map);
		}
		else if(action.equals("available")) {
			int reqId = Integer.parseInt(request.getParameter("reqId"));
			String query = "UPDATE tbl_song_request SET is_avbl = 'Y', avbl_date_time = NOW() " +
					"WHERE id = ?";
			Connection con = ConnectionUtils.getConnection();
			PreparedStatement ps = con.prepareStatement(query);
			ps.setInt(1, reqId);
			int update = ps.executeUpdate();
			if(con != null) con.close();
			if(update == 1){
				List<Request> requests = getAllRequestById(0, true);
				Map<String, List<Request>> map = new HashMap<String, List<Request>>();
				map.put(Literals.REQUEST_LIST, requests);
				return new View("request", map);
			}
			return new View("error");
		}
		else {
			return new View("login");
		}
	}

}
