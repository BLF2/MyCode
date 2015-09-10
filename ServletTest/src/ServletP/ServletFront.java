package ServletP;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import loginInf.LoginCheck;

public class ServletFront  extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request,HttpServletResponse response) throws UnsupportedEncodingException{
		String cmd = request.getParameter("Submit");
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		if(cmd.equals("Login")){
			String LoginName = request.getParameter("LoginName");
			String LoginPswd = request.getParameter("LoginPswd");
			try {
				if(new LoginCheck(LoginName,LoginPswd).CheckLoginInf() == 3){
					ServletContext sc = getServletContext();
					RequestDispatcher rd = sc.getRequestDispatcher("/LoginInf/Manageindex.html");
					try {
						rd.forward(request, response);
					} catch (ServletException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}
