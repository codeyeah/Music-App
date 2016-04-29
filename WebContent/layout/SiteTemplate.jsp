<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	isELIgnored="false"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Music App</title>
<link rel="stylesheet" href="css/screen.css" type="text/css" media="screen, projection" />
<link rel="stylesheet" href="css/menu.css" type="text/css" />
<link rel="stylesheet" href="css/print.css" type="text/css" media="print" />
</head>
<body>
<div class="container">

<div class="span-24">
	<jsp:include page="${template.viewPart['header']}" />
</div>

<div class="span-6 border">
	<jsp:include page="${template.viewPart['menu']}" />
</div>
	
<div class="span-18 last">
	<jsp:include page="${template.viewPart['body']}" />
</div>	
			
<div class="span-24" class="myfooter">
	<jsp:include page="${template.viewPart['footer']}" />
</div>		

</div>

</body>
<!-- 
<script type="text/javascript">
function getParameterByName(name) {
    name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
    var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
        results = regex.exec(location.search);
    return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
}
function deleteCookie(c_name) {
    document.cookie = encodeURIComponent(c_name) + "=deleted; expires=" + new Date(0).toUTCString();
}
pt = getParameterByName('action');
if (pt == 'logout')
	deleteCookie("JSESSIONID");
getUrl = window.location;
jsId = '${cookie.JSESSIONID.value}';
if(jsId != null) {
    if (jsId instanceof Array)
        jsId = jsId[0].substring(11);
    else
        jsId = jsId.substring(11);
}


var baseUrl = getUrl .protocol + "//" + getUrl.host + "/" + getUrl.pathname.split('/')[1];
if(jsId == null && (pt!='register' || pt!='view' || pt!='logout' || pt!=''))
	window.location= '/user.do?action=view';

</script> -->
</html>