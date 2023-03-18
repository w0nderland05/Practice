<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="layout" tagdir="/WEB-INF/tags/layout" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="html" tagdir="/WEB-INF/tags/html" %>
<fmt:setBundle basename="messages.commons" />
<fmt:message var="title" key="member.jointitle" />
<c:url var="action" value="/member/join" />
<layout:main siteTitle="${title}">
<h1>${title}</h1>

<form name="registFrm" method="post" action="${action}" autocomplete="off" target="ifrmProcess">
	<dl>
		<dt><fmt:message key="userId" /></dt>
		<dd>
			<input type="text" name="userId">
		</dd>
	</dl>
	<dl>
		<dt><fmt:message key="userPw" /></dt>
		<dd>
			<input type="password" name="userPw" />
		</dd>
	</dl>
	<dl>
		<dt><fmt:message key="userPwRe" /></dt>
		<dd>
			<input type="password" name="userPwRe" />
		</dd>
	</dl>
	<dl>
		<dt><fmt:message key="userNm" /></dt>
		<dd>
			<input type="text" name="userNm">
		</dd>	
	</dl>
	<dl>
      <dt>생년월일</dt>
      <dd>
         <input type="text" name="birthDt">년
         <html:selectNum start="1" end="12"  name="birthDt" label="월" />월
         <input type="text" name="birthDt">일 
      </dd>
   </dl>
   	<dl>
      <dt>성별</dt>
      <dd>
         <input type="text" name="birthDt">년
         <html:selectNum start="1" end="12"  name="birthDt" label="월" />월
         <input type="text" name="birthDt">일 
      </dd>
   </dl>
	<dl>
		<dt><fmt:message key="mobile" /></dt>
		<dd>
			<input type="text" name="mobile">
		</dd>
	</dl>
	
	<div class='terms'>약관</div>
	<div>
		<input type="checkbox" name="agree" value="1" id="agree">
		<label for="agree">
			<fmt:message key="member.agree.terms" />
		</label>
	</div>
	
	<div class='btns'>
		<button type="reset">
			<fmt:message key="reset" />
		</button>
		<button type="submit">
			<fmt:message key="member.join" />
		</button>
	</div>
</form>
</layout:main>













