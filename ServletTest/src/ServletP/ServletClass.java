package ServletP;

import javax.servlet.ServletException;
import net.sf.json.JSONObject;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbDriver.*;

import java.io.*;
import loginInf.LoginCheck;
import loginInf.LoginInf;

public class ServletClass extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter pout = response.getWriter();
		String result = "";
			try {
				BufferedReader br = new BufferedReader(new InputStreamReader(request.getInputStream(), "utf-8"));
				StringBuffer sb = new StringBuffer("");
				String Temp;
				while ((Temp = br.readLine()) != null) {
					sb.append(Temp);
				}
				br.close();
				System.out.println(sb);
				String Ssb = sb.toString();
				JSONObject jsobj =  JSONObject.fromObject(Ssb);
				String Cmd = jsobj.getString("task");
				if (Cmd.equals("login")) {//验证登陆
					int re = new LoginCheck(jsobj.getString("account"), jsobj.getString("psw")).CheckLoginInf();
					if (re == 0) {
						result = "NoThisAccount";// 没有这个账户存在
					} else if (re == 1) {
						result = "Successful";// 成功
					} else {
						result = "AccountOrPswWrong";// 用户名或密码错误
					}
				}else if(Cmd.equals("register")){//注册
					new JSONObject();
					JSONObject js = JSONObject.fromObject(Ssb);
					LoginInf li = (LoginInf)JSONObject.toBean(js, LoginInf.class);
					if(new LoginInfInsert().InsertLoginInf(li) > 0){
						result = "Succeed";
					}else{
						result = "Failed";
					}
				}else if(Cmd.equals("getinf")){//得到某用户信息
					String LoginName = jsobj.getString("account");
					LoginInf li = new LoginInfRead().getLoginInf(LoginName);
					JSONObject js = JSONObject.fromObject(li);
					result = js.toString();
				}else if(Cmd.equals("testloginnane")){//测试用户名是否存在
					String LoginName = jsobj.getString("account");
					if(new LoginInfRead().getLoginInf(LoginName) == null){
						result = "true";
					}else{
						result = "false";
					}
				}
			} catch (Exception e) {
				result = "Error";
			} finally {
				pout.write(result);
				pout.flush();
				pout.close();
			}
	}
}
