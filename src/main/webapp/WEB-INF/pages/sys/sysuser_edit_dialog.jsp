<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <div id="sys_sysuser_edit_dialog" class="easyui-dialog" data-options="closed:true,buttons:
    '#sys_sysuser_edit_dialog_buttons',iconCls:
    'icon-add',title:'新增用户'" style="width:600px;padding:10px;">
		<div align="center">
			<form id="sys_sysuser_edit_dialog_form" method="post">
			
			<input type="hidden" name="id" />
			
			<!--  -->
			<input type="hidden" name="_method" value="PUT" />
			
				<table class="dialog-table">
					<tr>
						<th>账号</th>
						<td><input class="easyui-textbox" name="account" data-options="height:24,width:160, required:true,validType:'length[1,20]'"/></td>
					
					    <th>用户名</th>
						<td><input class="easyui-textbox" name="name" data-options="height:24,width:160, required:true,validType:'length[2,20]'"/></td>
					</tr>
					<tr>
						
						<th>性别</th>
						<td>
							<select class="easyui-combobox" data-options="height:24,width:160"  name="gender">
							    <option value="M">男</option>   
							    <option value="F">女</option>  
							</select>
						</td>
						<th>电子邮箱</th>
						<td><input class="easyui-textbox" name="email" data-options="height:24,width:160, required:true,validType:'email'"/></td>
					
					</tr>
					<tr>
						<th>出生日期</th>
						<td><input class="easyui-datebox" name="birthday" data-options="height:24,width:160, required:true,editable:false"/></td>
					</tr>
				</table>
			</form>
		</div>
    </div>
    
  <div id="sys_sysuser_edit_dialog_buttons">
	<a id="sys_sysuser_edit_dialog_buttons_save" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-ok'">保存</a>

 </div>
 
 
  <script type="text/javascript">
   $(function(){
	  // 保存
	  $("#sys_sysuser_edit_dialog_buttons_save").click(function(){
		  $("#sys_sysuser_edit_dialog_form").form('submit',{
			  url:'${pageContext.request.contextPath}/sysuser/sysuser',
			  success:function(r){
				 var  $r =$.parseJSON(r);
				 if($r.success){
					 // 刷新 datagrid suju
					 $("#sys_sysuser_datagrid").datagrid("load");
				      
					 // 关闭
					 $("#sys_sysuser_edit_dialog").dialog("close");
					 
					 // 弹出成功窗口
					 $.messager.show({
						 title:'系统消息',
						 msg:$r.content,
						 timeout:2000,
						 showType:'slide'
					 })
				 }
			  }
		  })
	  })
	  
   })
 
 
 </script>
 
 
 
 
 
 
 
    
    