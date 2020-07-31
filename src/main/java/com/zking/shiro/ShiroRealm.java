package com.zking.shiro;

/*import com.zking.model.SysUser;
import com.zking.service.ISysUserService;*/
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.Set;

@Component
public class ShiroRealm extends AuthorizingRealm {
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
        return null;
    }

    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        return null;
    }
   /* @Autowired
    private ISysUserService sysUserService;*/
    //权限认证
    /*@Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
      String username=principalCollection.getPrimaryPrincipal().toString();
       //得到用户角色名
        Set<String> roles = sysUserService.findRole(username);
       //得到用户权限信息
        Set<String> permisions = sysUserService.findPermision(username);
       //设置安全数据库中关于角色以及权限的内容
        SimpleAuthorizationInfo simpleAuthorizationInfo=new SimpleAuthorizationInfo();
        simpleAuthorizationInfo.setRoles(roles);
        simpleAuthorizationInfo.setStringPermissions(permisions);
        return simpleAuthorizationInfo;

    }
    //身份认证
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
     //获取用户通过请求发送过来的账号和密码
      String username= authenticationToken.getPrincipal().toString();//用户名
      String password=authenticationToken.getCredentials().toString();//密码
       //根据用户账号到数据库找到对应的用户信息
        SysUser sysUser=sysUserService.userLogin(username);
      //判断该用户是否存在
        if(null==sysUser){
            throw new UnknownAccountException("账号不存在");
            //RuntimeException
        }
        //将数据库数据交给shiro匹配
        SimpleAuthenticationInfo simpleAuthenticationInfo=new SimpleAuthenticationInfo(
                sysUser.getUsername(),
                sysUser.getPassword(),
                ByteSource.Util.bytes(sysUser.getSalt()),
                this.getName()

        );
     return simpleAuthenticationInfo;

    }*/

}
