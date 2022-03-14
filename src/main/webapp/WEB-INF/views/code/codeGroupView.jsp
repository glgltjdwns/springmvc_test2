<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


<c:out value="${item.ifcgSeq}"/> | <c:out value="${item.ifcgName}"/> | <c:out value="${item.ifcgDelNy}"/> <br>

<a href="/infra/code/codeGroupForm2?ifcgSeq=<c:out value="${item.ifcgName}"/>">수정</a>

<form method="post" action="codeGroupUpdt">
	<input type="text" name="ifmmSeq" value="${item.ifcgSeq}" style="visibility:hidden;">
 <!-- 	<input type="text" name="ifcgChangeName" placeholder="바꿀NAME"> 
	<input type="submit" value="제출"> -->
</form>

