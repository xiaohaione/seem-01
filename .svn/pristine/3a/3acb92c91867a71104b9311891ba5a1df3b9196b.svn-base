package com.xinyan.ssme.sys.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.xinyan.ssme.sys.bean.SysMenu;
import com.xinyan.ssme.sys.bean.SysUser;
import com.xinyan.ssme.sys.service.SysMenuService;
import com.xinyan.ssme.sys.service.SysService;
import com.xinyan.ssme.vo.Json;

@RequestMapping("/sys")
@RestController
public class SysControll {
	
	@Autowired
	private SysService sysService;
	
	@Autowired
	private SysMenuService sysMenuService;
	
	/**
	 * 登录
	 * @param sysUser
	 * @return
	 */
	@RequestMapping("/login")
	public Json login(SysUser sysUser) {
		Json json = new Json();
		
		//验证用户名和密码是否正确？
		//将表单获取的密码进行MD5加密处理，才能和数据中加密的密码去匹配
		sysUser.setPassword(DigestUtils.md5DigestAsHex(sysUser.getPassword().getBytes()));
		SysUser newSysUser = sysService.findSysUserByNameAndPwd(sysUser);

		//若正确，则返回一个成功的消息
		if(newSysUser != null) {
			json.setSuccess(true);
			json.setContent("登录成功!");
		} else {
			//若不正确，则返回一个不成功消息
			json.setSuccess(false);
			json.setContent("用户名或密码错误!");
		}
		
		return json;
	}
	
	
	@RequestMapping("/loadTree")
	public List<SysMenu> loadTree(){
	
		System.out.println(sysMenuService.getSysMenuForList());
		return sysMenuService.getSysMenuForList();
	}
	
	
	
}
