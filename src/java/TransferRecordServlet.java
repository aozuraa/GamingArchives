/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author merki
 */
@WebServlet(urlPatterns = {"/TransferRecordServlet"})
public class TransferRecordServlet extends HttpServlet {

    String username;
    String password;

    Connection conn;

    @Override
    public void init(ServletConfig config) throws ServletException {
	username = config.getInitParameter("DBusername");
	password = config.getInitParameter("DBpassword");
	super.init(config);
	try {
	    Class.forName(config.getInitParameter("DBdriver"));
	    String url = config.getInitParameter("DBurl");
	    conn = DriverManager.getConnection(url, username, password);
	} catch (SQLException sqle) {
	    System.out.println("SQLException error occured - "
		    + sqle.getMessage());
	} catch (ClassNotFoundException nfe) {
	    System.out.println("ClassNotFoundException error occured - "
		    + nfe.getMessage());
	}

    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
	    throws ServletException, IOException {
	try {
	  DateTimeFormatter dtf = DateTimeFormatter.ofPattern("uuuu-MM-dd");
	    LocalDate today = LocalDate.now();
	    String date = dtf.format(today);

	    String uname = request.getParameter("uname");
	    String query = "SELECT * FROM APP.USERDB where USERNAME = ?";
	    PreparedStatement pst = conn.prepareStatement(query);
	    pst.setString(1, uname);
	    ResultSet records = pst.executeQuery();
            records.next();

	    String pass = records.getString("PASSWORD");
	    String email = records.getString("EMAIL");

	    String query1 = "DELETE FROM APP.USERDB where USERNAME = ?";
	    pst = conn.prepareStatement(query1);
	    pst.setString(1, uname);
	    pst.executeUpdate();

	    String query2 = "INSERT INTO APP.VERIFIEDDB(username,password,email,role,date)VALUES(?,?,?,?,?)";
	    pst = conn.prepareStatement(query2);
	    pst.setString(1, uname);
	    pst.setString(2, pass);
	    pst.setString(3, email);
	    pst.setString(4, "member");
	    pst.setString(5, date);
	    pst.executeUpdate();

	    response.sendRedirect("subpage/myAccountPageAdmin.jsp");
	   
	} catch (SQLException sqle) {
	    response.sendRedirect("errPages/Error404.jsp");
	}
    }
// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">

    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
	    throws ServletException, IOException {
	processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
	    throws ServletException, IOException {
	processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
	return "Short description";
    }// </editor-fold>

}
