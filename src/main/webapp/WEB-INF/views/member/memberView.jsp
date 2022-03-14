<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

 MemberView

<c:out value="${item.ifmmSeq}"/> | <c:out value="${item.ifmmName}"/> |<c:out value="${item.ifmmDelNy}"/> <br>

<a href="/infra/member/memberForm?ifmmSeq=<c:out value="${item.ifmmName}"/>">수정</a>
<a href="/infra/member/memberForm?ifmmSeq=<c:out value="${item.ifmmSeq}"/>">등록</a>


 