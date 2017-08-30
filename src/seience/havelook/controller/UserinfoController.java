package seience.havelook.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import seience.havelook.pojo.Userinfo;
import seience.havelook.service.UserinfoService;

@Controller
public class UserinfoController {
	@Autowired
	UserinfoService userinfoService;

	// 跳转到登录页
	@RequestMapping("/preLogin")
	public String preLogin() {

		return "admin/login";
	}

	// 修改用户设置
	@RequestMapping("/userinfo/updateUserinfo")
	public @ResponseBody String updateUserinfo(Userinfo userinfo, HttpSession session) {
		userinfoService.updateByPrimaryKeySelective(userinfo);// 修改用户信息
		userinfoService.removeSession(session);// 移除session
		return "suess";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(Userinfo userinfo, HttpServletRequest request, HttpSession session) {
		Subject subject = SecurityUtils.getSubject();
		UsernamePasswordToken token = new UsernamePasswordToken(userinfo.getUsername(),
				userinfo.getPassword().toString());
		try {
			subject.login(token);
		} catch (AuthenticationException e) {
			System.out.println("登录失败" + e.getMessage());
			return "redirect:/preLogin";
		}
		
		// 调用方法，保存数据库里面查询出来的useronfo对象并存入Session
		userinfoService.saveSession(userinfo, request, session);
		return "redirect:/admin";

	}

	// 退出登录，并移除session
	@RequestMapping("/loginout")
	public String loginout(HttpSession session) {
		userinfoService.removeSession(session);
		return "redirect:/index";
	}

	@RequestMapping("/userinfoError")
	public String userinfoError() {
		return "error";
	}
}
