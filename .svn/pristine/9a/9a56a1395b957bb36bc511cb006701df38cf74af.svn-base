<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<form id="sys_sysUser_searchForm" method="post">
			<table class="dialog-table">
				<tr>
					<th>用户名</th>
					<td><input class="easyui-textbox" name="name" data-options="height:24,width:160"/></td>
					<th>创建时间</th>
					<td>
						<input class="easyui-datetimebox" name="minCreateDateTime" data-options="height:24,width:160,editable:false"/>
						<input class="easyui-datetimebox" name="maxCreateDateTime" data-options="height:24,width:160,editable:false"/>
					</td>
				</tr>
				<tr>
					<th>性别</th>
					<td>
						<select class="easyui-combobox" data-options="height:24,width:160"  name="gender">
						    <option value=""></option>
						    <option value="M">男</option>   
						    <option value="F">女</option>  
						</select>
					</td>
					<th>最后修改间</th>
					<td>
						<input class="easyui-datetimebox" name="minModifyDateTime" data-options="height:24,width:160,editable:false"/>
						<input class="easyui-datetimebox" name="maxModifyDateTime" data-options="height:24,width:160,editable:false"/>
					</td>
				</tr>
				<tr>
					<td colspan="4" align="center">
						<a id="sys_sysuser_datagrid_searchBtn" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true"> 查 询 </a>&nbsp;&nbsp;  
						<a id="sys_sysuser_datagrid_clearBtn" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-clear',plain:true"> 清 空 </a> 
					</td>
				</tr>
			</table>
 </form>


<!-- 数据列表 -->
<table id="sys_sysuser_datagrid" class="easyui-datagrid" title="系统用户列表"   
        data-options="url:'${pageContext.request.contextPath}/sysuser/sysusers',fitColumns:true,pagination:true,striped:true,sortName:'account',sortOrder:'asc',toolbar:'#sys_sysuser_datagrid_toolbar',iconCls:'icon-man'">   
    <thead>   
        <tr>   
            <th data-options="field:'id',width:100,checkbox:true">ID</th>   
            <th data-options="field:'account',width:100,sortable:true">ACCOUNT</th>   
            <th data-options="field:'name',width:100,align:'right',sortable:true">NAME</th>  
            <!--格式化列的值,使用formatter -->
            <th data-options="field:'gender',width:50,formatter:function(value,row,index){
                        return value == 'M' ? '男' : '女'
                       }">GENDER</th>   
            <th data-options="field:'birthday',width:100,sortable:true">BIRTHDAY</th>   
            <th data-options="field:'email',width:100,align:'right',sortable:true">EMAIL</th>    
            <th data-options="field:'create_datetime',width:100,sortable:true">CREA_TEDATE_TIME</th>   
            <th data-options="field:'modify_datetime',width:100,align:'right',sortable:true">MODIFY_DATE_TIME</th>    
        </tr>   
    </thead>   
</table>  

	<div id="sys_sysuser_datagrid_toolbar">
		<a id="sys_sysuser_datagrid_toolbar_add" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:false">新增</a>
		<a id="sys_sysuser_datagrid_toolbar_edit" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:false">修改</a>
	    <a id="sys_sysuser_datagrid_toolbar_remove" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:false">删除</a>
	</div>

  <jsp:include page="sysuser_add_dialog.jsp"></jsp:include>
  <jsp:include page="sysuser_edit_dialog.jsp"></jsp:include>
  
  
  <script type="text/javascript">
      
  // 添加用户
   $(function(){
	   $("#sys_sysuser_datagrid_toolbar_add").click(function(){
		    $("#sys_sysuser_add_dialog").dialog("open");
	   })
	   
	   // 修改用户
	   $("#sys_sysuser_datagrid_toolbar_edit").click(function(){
		 
		   var row =$("#sys_sysuser_datagrid").datagrid("getSelected");
		  if (row != null){
			  // 表单回选
			  $("#sys_sysuser_edit_dialog_form").form("load",row);
			  $("#sys_sysuser_edit_dialog").dialog("open");
		  }else {
			  $.messager.alert('系统消息','选择一项操作','info');
		  }
	   })
	   
	   
	   // 删除用户
	     $("#sys_sysuser_datagrid_toolbar_remove").click(function(){
		 
		   var rows =$("#sys_sysuser_datagrid").datagrid("getSelections");
		  if (rows.length <1){
			  $.messager.alert('系统消息','请至少选中一行进行操作','info');
		  }else {
			  var ids = [];
			  for (var i= 0 ; i <rows.length; i++){
				  ids[i] = rows[i].id;
				  
			  }
			 $.post("${pageContext.request.contextPath}/sysuser/sysuser/" + ids.join(","),
					 {"_method":"DELETE"},
					 function(r){
						 if (r.success){
							// 刷新 datagrid 数据
							 $("#sys_sysuser_datagrid").datagrid("load");
							 
							 $.messager.show({
								 title:'系统消息',
								 msg:r.content,
								 timeout:2000,
								 showType:'slide'
							 });
						 }
			 } ,"json" )
		  }
	   })
	   
	   
	   
	   // 条件查询用户
	   $("#sys_sysuser_datagrid_searchBtn").click(function(){
		 //serializeObject, 将form表单内容序列化为一个Object.
			$("#sys_sysuser_datagrid").datagrid('load', $.serializeObject($('#sys_sysUser_searchForm')));
	        
	   })
	   
	   //清空查询条件
	      $("#sys_sysuser_datagrid_clearBtn").click(function(){
	    	  $('#sys_sysUser_searchForm').form("reset");
				$("#sys_sysuser_datagrid").datagrid('load', $.serializeObject($('#sys_sysUser_searchForm')));

	   })
	   
   })
  
  
  </script>   
    
    
    
    
    
    
    
    
    
    
    
    
    
    