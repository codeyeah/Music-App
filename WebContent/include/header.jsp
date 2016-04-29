<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="span-24 headspan">
	<img src="images/eMusic_header.jpg" />
</div>
<c:if
	test="${sessionScope.MODULE != null && sessionScope.MODULE == 'ADMIN_MODULE'}">
<div id="underlinemenu">
	<ul>
		<li><a href="" title="Hi">Hi!</a></li>
	</ul>
</div>
</c:if>
<c:if
	test="${sessionScope.MODULE != null && sessionScope.MODULE == 'USER_MODULE'}">
<div id="underlinemenu">
	<ul>
		<li><a href="" title="Hi">Hi!</a></li>
	</ul>
</div>
</c:if>
<c:if test="${sessionScope.MODULE == null || sessionScope.MODULE == ''}">
<div id="underlinemenu">
	<ul>
		<li><a href="user.do?action=view" title="USER">USER</a></li>
		<li><a href="admin.do?action=view" title="ADMIN">ADMIN</a></li>
	</ul>
</div>
</c:if>