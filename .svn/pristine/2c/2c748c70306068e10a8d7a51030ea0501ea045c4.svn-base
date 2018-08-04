package com.xinyan.ssme.sys.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.xinyan.ssme.sys.bean.SysUser;
import com.xinyan.ssme.sys.mapper.SysMapper;
import com.xinyan.ssme.sys.service.SysService;

@Transactional
@Service
public class SysServiceImpl implements SysService {
	
	@Autowired
	private SysMapper sysMapper;

	@Override
	public SysUser findSysUserByNameAndPwd(SysUser sysUser) {
		return sysMapper.getSysUser(sysUser);
	}

}
