<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<c:set var="home" value="<%=request.getContextPath()%>"></c:set>

<html>
<head>
<title>Home</title>
</head>
<body style="height: 1500px">
	<%@include file="/WEB-INF/views/common/menubar.jsp"%>
	<div class="container-fluid" style="margin-top: 80px">
		<h3>테스트용 메인 페이지</h3>
	</div>
</body>
</html>
