package com.xinyan.ssme.sys.service;

import com.xinyan.ssme.sys.bean.SysUser;

public interface SysService {

	public SysUser findSysUserByNameAndPwd(SysUser sysUser);
}
