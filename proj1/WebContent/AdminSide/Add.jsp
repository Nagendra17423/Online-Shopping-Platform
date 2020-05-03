<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<h1>Upload Product Details:</h1><br><br><br>
<form action="AdminServlet?cat=<%=request.getAttribute("cat") %>&id=addtodb" method="post" enctype="multipart/form-data">
Product Name:<input type="text" name="name" placeholder="Product Name">
<br><br><br>
<!--  <input type="hidden" id="cat" value="<%=request.getAttribute("cat") %>">-->
Price:<input type="text" name="price" placeholder="Price"><br><br><br>
<input type="file" name="file"><br><br><br>
<input type="submit" value="UPLOAD"><br><br><br>
</form>
</center>
</body>
</html>