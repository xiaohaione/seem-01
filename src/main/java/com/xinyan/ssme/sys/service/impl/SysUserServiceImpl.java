package com.xinyan.ssme.sys.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.xinyan.ssme.sys.bean.SysUser;
import com.xinyan.ssme.sys.condition.SysUserCondition;
import com.xinyan.ssme.sys.mapper.SysUserMapper;
import com.xinyan.ssme.sys.service.SysUserService;
import com.xinyan.ssme.vo.Page;

@Transactional
@Service
public class SysUserServiceImpl implements SysUserService {

	@Autowired
	private SysUserMapper sysUserMapper;
	


	@Override
	public int getSysUserTotal(SysUserCondition sysUserCondition) {
		// TODO Auto-generated method stub
		return sysUserMapper.getSysUserTotal(sysUserCondition);
	}

	@Override
	public void addSysUser(SysUser sysUser) {
		// TODO Auto-generated method stub
		sysUserMapper.save(sysUser);
	}

	@Override
	public void updateSysUser(SysUser sysUser) {
		// TODO Auto-generated method stub
		sysUserMapper.update(sysUser);
	}

	@Override
	public void deleteSysUser(String[] ids) {
		// TODO Auto-generated method stub
		sysUserMapper.delete(ids);
	}

	@Override
	public List<SysUser> getSysUserForList(Page page, SysUserCondition sysUserCondition) {
		Map <String ,Object > map = new HashMap <> ();
		if (sysUserCondition != null) {
			map.put("name", sysUserCondition.getName());
			map.put("gender", sysUserCondition.getGender());
			map.put("minCreateDateTime", sysUserCondition.getMinCreateDateTime());
		    map.put("maxCreateDateTime", sysUserCondition.getMaxCreateDateTime());
		    map.put("minModifyDateTime", sysUserCondition.getMinModifyDateTime());
		    map.put("maxModifyDateTime", sysUserCondition.getMaxModifyDateTime());
		  
		}
		map.put("page", page.getPage());
		map.put("rows", page.getRows());
		map.put("sort", page.getSort());
		map.put("order", page.getOrder());
		
		return sysUserMapper.getForList(map);
	}

}
