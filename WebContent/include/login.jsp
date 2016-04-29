<div class="span-12" style="margin:50px 0px;">
<table width="100%" border="1" cellspacing="0" cellpadding="0" style="padding:10px;">
  <tr>
    <td>
		<img src="images/user-icon.png" width="128" height="128" />	
	</td>
    <td>
        <div id="login">
  		<h1>USER LOGIN</h1>
  		<form method="post" name="frmLogin" id="frmLogin" action="user.do?action=login">
  		<div class="errorMessage" align="center"></div>
    		<input name="name" type="text" id="name"  size="10" maxlength="20" placeholder="Name" />
    		<input name="password" type="password"  id="txtPassword"  size="10" placeholder="Password" />
    		<input name="btnLogin" type="submit" id="btnLogin" value="LOGIN NOW" />
  		</form>
	</div>
	</td>
  </tr>
  <tr>
  <td colspan="2" align="right">If you don't have any Account then <a href="user.do?action=register">Register</a> for Login.</td>
  </tr>
</table>
</div>
<div class="span-5 last">&nbsp;</div>
