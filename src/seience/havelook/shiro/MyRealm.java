package seience.havelook.shiro;

import javax.annotation.PostConstruct;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.credential.HashedCredentialsMatcher;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import seience.havelook.pojo.Userinfo;
import seience.havelook.service.UserinfoService;

@Service
public class MyRealm extends AuthorizingRealm {
	@Autowired
	UserinfoService userinfoService;

	/**
	 * 授权֤
	 */
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection collection) {

		return null;
	}

	/**
	 * 验证
	 */
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		// 设置盐值:
		String source = "abcdefg";
		ByteSource credentialsSalt = new Md5Hash(source);

		// TODO Auto-generated method stub
		String principal = token.getPrincipal().toString();// 登录的主信息，可以是一个实体类的对象，但该实体类的对象一定是个人能够既token的username得到的
		Userinfo userinfo = userinfoService.selectByUsernameToString(principal);
		String credentials = userinfo.getPassword();// 从数据库里面拿到的信息

		String realmName = getName();// 当前类名
		SimpleAuthenticationInfo info = new SimpleAuthenticationInfo(principal, credentials, credentialsSalt,
				realmName);
		return info;
	}

	@PostConstruct // : 相当于 bean 节点的 init-method 配置.
	public void setCredentialMatcher() {
		HashedCredentialsMatcher credentialsMatcher = new HashedCredentialsMatcher();

		credentialsMatcher.setHashAlgorithmName("MD5");
		credentialsMatcher.setHashIterations(1024);

		setCredentialsMatcher(credentialsMatcher);
	}
}
