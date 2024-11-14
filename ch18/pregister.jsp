<%@page contentType="text/html; charset=EUC-KR"%>
<%
		String msg = (String)session.getAttribute("msg");
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	<title>PhotoBlog</title>
	<%@include file="js_css.html" %>
	<script type="text/javascript">
 		function register() {
			document.frm.submit();
		}
 	</script>
</head>
<body>
<div data-role="page">
	<div data-role="header">
		<table>
			<tr>
				<td align="left" width="200">
					<h1 style="font-family: fantasy;" align="left">&nbsp;&nbsp;PhotoBlog</h1></td>
			</tr>
		</table>
	</div>
	<div data-role="content">
	<h1>PMember Register</h1>
    	<form method="post" name="frm" action="pmemberPost" enctype="multipart/form-data" class="post_form">
           <p>
               <label for="user_id">���̵�:
                   <input name="id">
                       </label>
                   </p>
                   <p>
                       <label for="user_password">��й�ȣ:
                        <input type="password" name="pwd">
                       </label>
                   </p>
                   <p>
                      <label for="user_name">�̸�:
                        <input name="name">
                       </label>
                   </p>
                   <p>
                     <label for="user_profile">������ ����:
                      <input type="file" name="profile">
                    </label>
                 </p>
                <input type="button"  value="ȸ������" onclick="register()">
                 <%if(msg!=null){%>
				<div align="center"><font color="red"><%=msg%></font></div>
				<%}%>    
    	</form>
	</div>
	
	<%@include file="footer.jsp" %>
</div>
</body>
</html>