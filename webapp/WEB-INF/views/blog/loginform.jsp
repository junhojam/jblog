<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>loginform.jsp</title>
	<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.9.0.js"></script>
	
	<script type="text/javascript">
		function redirect(){
			var url="${pageContext.request.contextPath}/blog/main/${id}";
			window.location=url;
		}
	</script>

</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/user/loginsuccess">
	<input type="text" name="hid" value="${id}">	
    <table width="100%" height=320 border="0" cellpadding="0" cellspacing="0">
      <tr>
      	<td height=40 colspan="10">&nbsp;</td>
      </tr>
      <tr>
        <td width="100%" height="120"colspan="10" align="center">
        <img src="${pageContext.request.contextPath}/assets/images/logo.jpg" border="0"></td>
      </tr>
     </table>
     <table align="center">
      <tr>
      	<td>
      	id :
      	</td>
      	<td>
      	 <input type="text" name="id" size="10">
      	</td>
      </tr>
       <tr>
      	<td>
      	password :
      	</td>
      	<td>
      	 <input type="password" name="password" size="10">
      	</td>
      </tr>
      <tr>
      	<td>
      		<input type="submit" value="확인">
      	</td>
      	<td>
      		<input type="button" value="취소" onClick="redirect();">
      	</td>
      </tr>
      
    </table>
   	</form>
</body>
</html>