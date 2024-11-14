<%@page contentType="text/html; charset=EUC-KR"%>
<jsp:useBean id="bean" class="ch18.PMemberBean" scope="session"/>
<!DOCTYPE html> 
<html>
<head>
	<meta charset="UTF-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	<title>PhotoBlog</title>
	<%@include file="js_css.html" %>
	<script type="text/javascript">
 		function update() {
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
	<h1>PMember Update</h1>
                <form method="post" name="frm" action="pmemberUpdate" enctype="multipart/form-data" class="post_form">
                    <p>
                        <label for="user_id">���̵�:
                        	<input name="id" value="<%=bean.getId()%>" readonly>
                        </label>
                    </p>
                    <p>
                        <label for="user_password">��й�ȣ:
                        	<input type="password" name="pwd" value="<%=bean.getPwd()%>">
                        </label>
                    </p>
                    <p>
                        <label for="user_name">�̸�:
                        	<input name="name" value="<%=bean.getName()%>">
                        </label>
                    </p>
                    <p>
                        <label for="user_profile">������ ����:
                            <%=bean.getProfile()%>
                        	<input type="file" name="profile">
                        </label>
                    </p>
                    <input type="button"  value="ȸ������" onclick="update()">
                </form>
	</div>
	<%@include file="footer.jsp" %>
</div>
</body>
</html>