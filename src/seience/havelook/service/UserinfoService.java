package seience.havelook.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import seience.havelook.dao.UserinfoMapper;
import seience.havelook.pojo.Userinfo;

@Service
public class UserinfoService {
	@Autowired
	UserinfoMapper userinfoMapper;

	// 判断是否能登陆
	public boolean checkUserinfo(Userinfo userinfo)  {
		if (userinfo.getUsername() != "" && userinfo.getPassword() != "" && userinfo != null) {// 排除空字符
			Userinfo sqlUserinfo = selectByUsername(userinfo);
			boolean userboolean = (userinfo.getPassword().equals(sqlUserinfo.getPassword())) ? (true) : (false);
			return userboolean;
		} else {
			return false;
		}
	}

	// 查询出一个对象，根据Userinfo.getUsername()
	public Userinfo selectByUsername(Userinfo Userinfo) {
		// TODO Auto-generated method stub
		Userinfo sqlUserinfo = userinfoMapper.selectByUsername(Userinfo.getUsername());
		return sqlUserinfo;
	}

	// 保存Session
	public void saveSession(Userinfo Userinfo, HttpServletRequest request, HttpSession session) {
		// TODO Auto-generated method stub
		Userinfo sqlUserinfo = selectByUsername(Userinfo);
		session = request.getSession();
		session.setAttribute("sqlUserinfo", sqlUserinfo);
	}

	// 拿到session
	public Userinfo getSession(HttpSession session) {
		// TODO Auto-generated method stub
		return (Userinfo) session.getAttribute("sqlUserinfo");
	}

	// 移除session
	public void removeSession(HttpSession session) {
		// TODO Auto-generated method stub
		session.removeAttribute("sqlUserinfo");
	}

	public void updateByPrimaryKeySelective(Userinfo userinfo) {
		// TODO Auto-generated method stub
		userinfoMapper.updateByPrimaryKeySelective(userinfo);
	}

	public Userinfo selectByUsernameToString(String name) {
		// TODO Auto-generated method stub
		return  userinfoMapper.selectByUsername(name);
	}
}
