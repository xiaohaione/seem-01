<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>
<!-- EasyUI 所需的文件 -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/jquery-easyui-1.5.5.2/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/jquery-easyui-1.5.5.2/themes/icon.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/jquery-easyui-1.5.5.2/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/jquery-easyui-1.5.5.2/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/jquery-easyui-1.5.5.2/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript">
	$(function(){
		//JavaScript动态方式创建panel组件
		/*
		$('#p').panel({    
			  width:500,    
			  height:150,    
			  title: '系统登录',    
			  tools: [{    
			    iconCls:'icon-add',    
			    handler:function(){alert('new')}    
			  },{    
			    iconCls:'icon-save',    
			    handler:function(){alert('save')}    
			  }]    
			});
		*/
		
		/*
		 * EasyUI 表单提交方式：
		 * 1、EasyUI form表单提交方法
		 * 2、使用 Ajax 提交表单
		 */
		 $("#login_submit").click(function(){
			 //使用EasyUI 原生表单提交，将 form表单变成一个ajax表单提交
			 /*
			 $("#login_form").form('submit', {
				 url: '${pageContext.request.contextPath }/sys/login',
				 success: function(r){
					 //返回的是一个 json 字符串
					 //将 json 字符串转换为一个 json 对象
					 var $r = $.parseJSON(r);
					 if($r.success){
						 //跳转到主页
						 location.replace('${pageContext.request.contextPath }/toIndex');
					 }else{
						 //显示错误消息 
						 //messager, 消息窗口组件
						 //icon取值：error,question,info,warning
						 $.messager.alert('系统消息',$r.content,'info');
					 }
				 }
			 });
			 */
			 
			 //使用jQuery Ajax 方式提交
			 $.post('${pageContext.request.contextPath }/sys/login',
					 //表单参数序列化
					 $("#login_form").serialize(),
					 function(r){
						 //返回的是一个json对象
						 if(r.success){
							 //跳转到主页
							 location.replace('${pageContext.request.contextPath }/toIndex');
						 }else{
							 //显示错误消息 
							 //messager, 消息窗口组件
							 //icon取值：error,question,info,warning
							 $.messager.alert('系统消息',r.content,'info');
						 }
					 }, "json")
		 })
		 
	})
	
</script>
</head>
<body>
<!-- 
	EasyUI 组件创建方式？
	1、基于标签 + CSS （静态创建）
	2、基于JavaScript （动态创建）
 -->
   <div style="width:500px;margin:auto;margin-top:200px;">
	   <div id="login_panel" class="easyui-panel" style="width:400px;height:200px;padding:10px;" data-options="title:'系统登录',iconCls:'icon-lock'">
		   	<div style="width:300px;padding:10px;margin-left: auto;margin-right: auto;">
			   	<form id="login_form" action="" method="post">
			   		<table>
			   			<tr>
			   				<th align="right">用户名</th>
			   				<td><input class="easyui-textbox" data-options="iconCls:'icon-man',required:true" name="account" style="width:200px"/></td>
			   			</tr>
			   			<tr>
			   				<th align="right">密码</th>
			   				<td><input class="easyui-passwordbox" data-options="required:true" name="password" style="width:200px"/></td>
			   			</tr>
			   			<tr>
			   				<td></td>
			   				<td>
			   					<a id="login_submit" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-ok'" style="width:200px">登录</a>
			   				</td>
			   			</tr>
			   		</table>
			   	</form>
		   	</div>
	  	</div>
   	</div>
</body>
</html>