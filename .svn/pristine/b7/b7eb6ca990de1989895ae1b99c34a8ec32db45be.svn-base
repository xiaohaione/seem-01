package com.xinyan.ssme.sys.condition;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

/**
 * 用户查询条件模型
 * @author Administrator
 */
public class SysUserCondition {

	private String name;
	private String gender;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private Date minCreateDateTime;
	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private Date maxCreateDateTime;
	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private Date minModifyDateTime;
	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private Date maxModifyDateTime;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public Date getMinCreateDateTime() {
		return minCreateDateTime;
	}
	public void setMinCreateDateTime(Date minCreateDateTime) {
		this.minCreateDateTime = minCreateDateTime;
	}
	public Date getMaxCreateDateTime() {
		return maxCreateDateTime;
	}
	public void setMaxCreateDateTime(Date maxCreateDateTime) {
		this.maxCreateDateTime = maxCreateDateTime;
	}
	public Date getMinModifyDateTime() {
		return minModifyDateTime;
	}
	public void setMinModifyDateTime(Date minModifyDateTime) {
		this.minModifyDateTime = minModifyDateTime;
	}
	public Date getMaxModifyDateTime() {
		return maxModifyDateTime;
	}
	public void setMaxModifyDateTime(Date maxModifyDateTime) {
		this.maxModifyDateTime = maxModifyDateTime;
	}
	@Override
	public String toString() {
		return "SysUserCondition [name=" + name + ", gender=" + gender + ", minCreateDateTime=" + minCreateDateTime
				+ ", maxCreateDateTime=" + maxCreateDateTime + ", minModifyDateTime=" + minModifyDateTime
				+ ", maxModifyDateTime=" + maxModifyDateTime + "]";
	}
}
