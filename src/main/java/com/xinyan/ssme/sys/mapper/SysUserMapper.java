package com.xinyan.ssme.sys.mapper;

import java.util.List;
import java.util.Map;

import com.xinyan.ssme.sys.bean.SysUser;
import com.xinyan.ssme.sys.condition.SysUserCondition;
import com.xinyan.ssme.vo.Page;

public interface SysUserMapper {
     
	public List <SysUser> getSysUserForList(Page page);
	
	public  int getSysUserTotal(SysUserCondition sysUserCondition);
	
	public  void  save (SysUser sysUser );
	
	public void update (SysUser sysUser);
	
	public  void delete (String [] ids);
	
	public List <SysUser> getForList(Map<String ,Object> map);

}
