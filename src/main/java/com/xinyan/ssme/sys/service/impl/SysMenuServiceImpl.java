package com.xinyan.ssme.sys.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.xinyan.ssme.sys.bean.SysMenu;
import com.xinyan.ssme.sys.mapper.SysMenuMapper;
import com.xinyan.ssme.sys.service.SysMenuService;

@Transactional
@Service
public class SysMenuServiceImpl implements SysMenuService {
	
	@Autowired
	private SysMenuMapper sysMenuMapper;

	@Override
	public List<SysMenu> getSysMenuForList() {
		return sysMenuMapper.getForList();
	}

	
}
