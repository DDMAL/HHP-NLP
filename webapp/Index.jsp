<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>File Uploading Form</title>
</head>
<body>
	<h3>File Upload And Filter:</h3>

	<form name="uploadandfilterForm" method="POST" enctype="MULTIPART/FORM-DATA"
		action="uploadandfilter">
		File:<input type="file" name="file" size="30" /> <input
			type="submit" name="submit" value="uploadandfilter"> <input
			type="reset" name="reset" value="reset">
	</form>
	<h3>File Upload </h3>
	<form name="uploadForm" method="POST" enctype="MULTIPART/FORM-DATA"
		action="upload">
		File:<input type="file" name="file" size="30" /> <input
			type="submit" name="submit" value="upload"> <input
			type="reset" name="reset" value="reset">
	</form>


	<h3>FileList</h3>
	<table>
		<%@ page import="java.io.*,java.util.*, javax.servlet.*"%>
				<%	File file = new File(application.getInitParameter("storageaddress"));
	String[] filelist = file.list();
	for (int i = 0; i < filelist.length; i++) {
		out.append("<tr><td><a href=downurl?filepath="+filelist[i]+">"+filelist[i]+"</a></td>");
		out.append("<td><a href=LoadServlet?filepath="+filelist[i]+">"+"Load</a></td>");
		out.append("<td><a href=DeleteServlet?filepath="+filelist[i]+">"+"Deletefile</a></td>");
		out.append("<td><a href=OpieServlet?filepath="+filelist[i]+">"+"OpieFile</a></td>");
		out.append("<tr/>");}
	
	
	
%>
	</table>
	




</body>
</html>