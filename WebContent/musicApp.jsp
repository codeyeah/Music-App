<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="span-17" style="padding-left: 20px;">
<h3 style="color:##3333FF;font-weight: bold;margin-top:10px;">Music App</h3>
<hr/>
<p>The objective of our project is to provide user with a music player powered by a database</p>
<p>This is a Music App where you can download audio, videos and request for songs as well as play a song.</p>
<c:if
	test="${sessionScope.MODULE != null && sessionScope.MODULE == 'USER_MODULE'}">
<br/><br/><br/><br/><br/>
<h3 style="color:##3333FF;font-weight: bold;margin-top:10px;">Your Details</h3>
<hr/>
	<p>Id:	<c:out value="${sessionScope.USER_DETAILS.id}" /></p>
	<p>Name:	<c:out value="${sessionScope.USER_DETAILS.name}" /></p>
	<p>Email:	<c:out value="${sessionScope.USER_DETAILS.email}" /></p>
	<p>Type:	<c:out value="${sessionScope.USER_DETAILS.userType}" /></p>
</c:if>	
</div>