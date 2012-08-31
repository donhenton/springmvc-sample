<%--
 | (c) Copyright 2005-2011 JAXIO, www.jaxio.com
 | Source code generated by Celerio, a Jaxio product
 | Want to use Celerio within your company? email us at info@jaxio.com
 | Follow us on twitter: @springfuse
 | Template pack-mvc-3:src/main/webapp/WEB-INF/views/domain/showcase.e.vm.jsp
--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"
%><%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><head>
	<title><fmt:message key="moreTypesDemo" />: <fmt:message key="crud.functionalities.example" /></title>
</head>
<body>
	<h2><fmt:message key="crud.functionalities.showcase" /></h2>
	<div class="tabs">
		<ul>
			<li><a href="${pageContext.request.contextPath}/domain/moretypesdemo/list.html"><fmt:message key="crud.functionalities.list" /></a></li>
			<li><a href="${pageContext.request.contextPath}/domain/moretypesdemo/pattern.html"><fmt:message key="crud.functionalities.search" /></a></li>
			<li><a href="${pageContext.request.contextPath}/domain/moretypesdemo/search.html"><fmt:message key="crud.functionalities.example" /></a></li>
			<li><a href="${pageContext.request.contextPath}/domain/moretypesdemo/namedquery.html"><fmt:message key="crud.functionalities.named.query" /></a></li>
			<li><a href="${pageContext.request.contextPath}/domain/moretypesdemo/ajax.html"><fmt:message key="crud.functionalities.ajax" /></a></li>
		</ul>
	</div>
	<h2><fmt:message key="crud.direct.access" /></h2>
	<p>
		<a href="${pageContext.request.contextPath}/domain/moretypesdemo/create" class="button button-create"><fmt:message key="crud.functionalities.create" /></a>
		<a href="${pageContext.request.contextPath}/domain/moretypesdemo/list" class="button button-search"><fmt:message key="crud.functionalities.list" /></a>
		<a href="${pageContext.request.contextPath}/domain/moretypesdemo/pattern" class="button button-search"><fmt:message key="crud.functionalities.search" /></a>
		<a href="${pageContext.request.contextPath}/domain/moretypesdemo/search" class="button button-search"><fmt:message key="crud.functionalities.example" /></a>
		<a href="${pageContext.request.contextPath}/domain/moretypesdemo/namedquery" class="button button-search"><fmt:message key="crud.functionalities.named.query" /></a>
		<a href="${pageContext.request.contextPath}/domain/moretypesdemo/ajax" class="button button-search"><fmt:message key="crud.functionalities.ajax" /></a>
	</p>
</body>
