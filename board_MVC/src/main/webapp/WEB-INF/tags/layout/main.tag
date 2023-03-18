<%@ tag pageEncoding="UTF-8"%>
<%@ tag body-content="scriptless"%>
<%@ tag trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="layout" tagdir="/WEB-INF/tags/layout"%>
<%@ attribute name="siteTitle"%>
<layout:common siteTitle="${siteTitle}">
	<jsp:attribute name="header">
	<section id="site_top">
	   <div class='left'>
	      <a href="<c:url value='/'/>">HOME</a>
	   </div>
	   <div class='right'>
	       <c:if test="${isLogin}" >
	       ${sessionScope.member.userNm }(${sssionScope.member.userId}님 로그인...)
					<a href="<c:url value='/member/logout'/>">로그아웃</a>
		</c:if> 
	   </div>
	</section>
</jsp:attribute>
	<jsp:attribute name="footer">
	<h1>푸터</h1>
</jsp:attribute>
	<jsp:body>
	<jsp:doBody />	
</jsp:body>
</layout:common>