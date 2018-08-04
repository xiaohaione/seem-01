package com.xinyan.ssme.sys.service;

import java.util.List;

import com.xinyan.ssme.sys.bean.SysUser;
import com.xinyan.ssme.sys.condition.SysUserCondition;
import com.xinyan.ssme.vo.Page;

public interface SysUserService {

	
	
	public  int getSysUserTotal(SysUserCondition sysUserCondition);
	
	public  void addSysUser (SysUser sysUser);
	
	
	public void updateSysUser (SysUser sysUser);
	
	public  void deleteSysUser(String [] ids);
	
	public List <SysUser> getSysUserForList(Page page,SysUserCondition sysUserCondition);
	
}
