<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script>
 
  $(function(){
	  // 构建系统菜单树
	  // 1. 使用EasyUI 原生的tree 组件
	 
	  
	  $("#layout_west_menu_tree").tree({
	    	url:'${pageContext.request.contextPath}/sys/loadTree',
	    	parentField:'pid',
	    	onClick: function(node){
	    	   if (node.url != null && node.url != ""){
	    		   
	    	   
	    		addTabToMainTabs({
	    			// 面板标题,标签名
	    			title: node.text,
	    			// 是否显示关闭按钮
	    			closable:true,
	    			//包含页面
                     href:'${pageContext.request.contextPath}'+ node.url	
	    		});
	    		
	    	   } 
	    	}
	    	
	    });
	  
	  
	 // 2. 使用zTree (推荐使用)
	 // 设置zTree
	 // 在zTree的容器元素中需要色字class="zTree"属性
	 // zTree 的 node 节点,节点名(name)和节点链接
	 
	 /*
	 var zTree;
	 var setting = {
			 view: {
			        dblClickExpand: false,
			        showLine: true,
			        selectedMulti: false
			      },
			      data: {
			        simpleData: {
			          enable: true, //开启简单数据格式
			          idKey: "id",
			          pIdKey: "pid",
			         
			        }
			      },
			      async: {
			    	  enable: true, //开启 zTree 异步加载
			    	  url: '${pageContext.request.contextPath }/sys/loadTree'
			      },
			      check: {
						enable: false //是否开启复选框
					}
			    };
				
				//初始化 zTree
				zTree = $.fn.zTree.init($("#layout_west_menu_tree"), setting, null);
				
				//展开所有节点
				setTimeout(function() {
					zTree.expandAll(true);
				}, 1000);
				*/
				
	 //添加到 Tabs 中的新标签
	 function addTabToMainTabs (opts){
		    var mainTabs = $("#layout_main_tabs");
				if (mainTabs.tabs('exists',opts.title)){
					// 选中该面板
					mainTabs.tabs('select',opts.title);
				} else {
					//将一个新的面板添加到tabs 中
					mainTabs.tabs('add',opts);
					
				}
		}
				
				
	 
	 
  })

</script>



<div data-options="region:'west',title:'功能导航'" style="width:200px;">

	<div id="aa" class="easyui-accordion" data-options="fit:true,border:false">   
	    <div title="系统菜单" data-options="">   
	        <ul id="layout_west_menu_tree" class="ztree"></ul>
	    </div>   
	    <div title="个人文件夹1" data-options=""></div>
	 
	</div> 
</div>













