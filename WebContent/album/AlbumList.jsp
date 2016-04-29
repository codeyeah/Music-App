<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="span-17" style="padding-left:20px;">
<br/>
<h3>Song List</h3>
<hr/>
<p>List of all Albums in this Music App</p>
<c:if
	test="${sessionScope.MODULE != null && sessionScope.MODULE == 'ADMIN_MODULE'}">
<p>To add more Albums, <a href="album.do?action=form">Click Here</a></p>
</c:if>
<div class="span-17">

<table style="border:1px solid #9DBCEB;">
  <tr>
    <th bgcolor="#9DBCEB" scope="col"><span class="style1">Album Name</span></th>
    <th bgcolor="#9DBCEB" scope="col"><span class="style1">Artist</span></th>
    <th bgcolor="#9DBCEB" scope="col"><span class="style1">Music Director</span></th>
    <th bgcolor="#9DBCEB" scope="col"><span class="style1">Price</span></th>
    <th bgcolor="#9DBCEB" scope="col"><span class="style1">Company</span></th>
    <th bgcolor="#9DBCEB" scope="col"><span class="style1">Songs</span></th>
  </tr>
  <c:forEach var="a" items="${ALBUM_LIST}">
  <tr>
    <td style="border-bottom:1px dotted #9DBCEB;">${a.name}</td>
    <td style="border-bottom:1px dotted #9DBCEB;">${a.artist}</td>
    <td style="border-bottom:1px dotted #9DBCEB;">${a.music}</td>
    <td style="border-bottom:1px dotted #9DBCEB;">${a.price}</td>
    <td style="border-bottom:1px dotted #9DBCEB;">${a.company}</td>
    <td style="border-bottom:1px dotted #9DBCEB;">
    	<a href="album.do?action=detail&albumId=${a.id}">View Songs</a>
    </td>
  </tr>
  </c:forEach>
</table>

</div>
</div>