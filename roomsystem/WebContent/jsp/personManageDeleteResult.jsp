<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
<head>
	<html:base />
	<title>公寓管理系统--人员管理--删除结果画面</title>
	<link rel="stylesheet" type="text/css" href="styles/styles.css">
	<script type="text/javascript" src="javascript/javascript.js"></script>
</head>
<body>
	<div id="globaldiv">
		<%@include file="header.inc"%>
		<div id="messagediv">
			<br>
			<div id="pagehint">
				人员管理--删除结果画面
			</div>
			<hr>
			<div id="operatehint">
				操作已正常终了！
			</div>
			<br>
		</div>
		<div id="bodydiv">
			<html:form action="/personManageDeleteResultBack">
				<br />
				<html:submit property="back" value="返回" styleClass="button"></html:submit>
			</html:form>
		</div>
		<%@include file="footer.inc"%>
	</div>
</body>
</html:html>
