<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<form method="post" action="/infar/code/codeGroupUpdt">
	<input type="hidden" name="ifcgSeq" value="${item.ifcgSeq}"/>
	<input type="text" name="ifcgName" placeholder="아이디" value="<c:out value="${item.ifcgName}"/>">
	<input type="submit" value="제출">
</form>

