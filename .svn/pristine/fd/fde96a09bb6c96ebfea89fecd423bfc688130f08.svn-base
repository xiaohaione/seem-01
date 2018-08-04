package com.xinyan.ssme.sys.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.xinyan.ssme.sys.bean.SysUser;
import com.xinyan.ssme.sys.condition.SysUserCondition;
import com.xinyan.ssme.sys.service.SysUserService;
import com.xinyan.ssme.vo.DataGrid;
import com.xinyan.ssme.vo.Json;
import com.xinyan.ssme.vo.Page;

@RequestMapping("/sysuser")
@RestController
public class SysUserController {
	
	@Autowired
	private  SysUserService sysUserService;
	
	/**
	 *  批量删除系统用户
	 * @param id
	 * @return
	 */
	@RequestMapping(value="/sysuser/{id}" ,method=RequestMethod.DELETE)
	public Json deleteSysUser(@PathVariable("id") String id) {
		 Json json = new Json();
		
		 String [] ids = id.split(",");
		 sysUserService.deleteSysUser(ids);
		  json.setSuccess(true);
		  json.setContent("删除成功");
		  return json;
	}
	
	
	/**
	 * 修改系统用户
	 * @param sysUser
	 * @return
	 */
	@RequestMapping(value="/sysuser" ,method=RequestMethod.PUT)
	public Json updateSysUser(SysUser sysUser) {
		Json json = new Json();	
		sysUserService.updateSysUser(sysUser);
		json.setSuccess(true);
		json.setContent("数据修改成功!");
		return json;
	}
	
	/**
	 * 新增数据
	 * @param sysUser
	 * @return
	 */
	@RequestMapping(value="/sysuser",method=RequestMethod.POST)
	public Json addSysUser(SysUser sysUser) {
		Json json = new Json();	
		sysUserService.addSysUser(sysUser);
		json.setSuccess(true);
		json.setContent("数据修改成功!");
		return json;
	}
	
	/**
	 * 查询所有的系统用户
	 * @return
	 */
	@RequestMapping("/sysusers")
	public  DataGrid<SysUser> getSysUser(Page page ,SysUserCondition sysUserCondition ){
		DataGrid <SysUser> dataGrid = new DataGrid<>();
		dataGrid.setRows(sysUserService.getSysUserForList(page,sysUserCondition));
		dataGrid.setTotal(sysUserService.getSysUserTotal(sysUserCondition));
		return dataGrid;
	}

	
	
	
	
	
}
