<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/default.css">
<!-- EasyUI 所需的文件 -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/jquery-easyui-1.5.5.2/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/jquery-easyui-1.5.5.2/themes/icon.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/jquery-easyui-1.5.5.2/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/jquery-easyui-1.5.5.2/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/jquery-easyui-1.5.5.2/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/script/jquery.easyui.ext.js"></script>

<!-- zTree 所需文件 -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/zTree_v3-master/css/zTreeStyle/zTreeStyle.css" type="text/css">
<script type="text/javascript" src="${pageContext.request.contextPath }/zTree_v3-master/js/jquery.ztree.core.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/zTree_v3-master/js/jquery.ztree.excheck.js"></script>


</head>
<body class="easyui-layout">  
 
    <!-- 顶部:系统banner -->
    <jsp:include page="north.jsp"></jsp:include>
     <!-- 底部:系统版权信息 -->
    <jsp:include page="south.jsp"></jsp:include> 
    <!-- 系统菜单 -->
    <jsp:include page="west.jsp"></jsp:include>
    <!-- Layout 布局面板 -->
    <div data-options="region:'center'" >
        <div id="layout_main_tabs" class="easyui-tabs">   
		    
		</div>
    
    </div>   
</body> 
</html>