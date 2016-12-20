<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.11.0/bootstrap-table.min.css">
<link href="diseno.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Modificar</title>
</head>
<body>

<%@page import="com.infosyst.dao.userDao, com.infosyst.bean.*,java.util.*" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="barra.jsp"></jsp:include>

<%List<User> list= userDao.getAllRecords();
request.setAttribute("list",list);
%>
<div class="container">
<div id="toolbar" ></div>
<table id="table" class="fondo" data-toolbar="#toolbar"

         data-toggle="table" border="1" width="90%">
<tr><th>Id</th><th>Nombre</th><th>Apellido Paterno</th><th>Apellido Materno</th><th>Email</th><th>Edad</th><th>Ingresos mensuales</th><th>Fecha Ingreso</th><th>Editar</th><th>Borrar</th></tr>
<c:forEach items="${list}" var="u">
<tr><td>${u.getId()}</td><td>${u.getNombre()}</td><td>${u.getApellido_paterno()}</td><td>${u.getApellido_materno()}</td><td>${u.getEmail()}</td><td>${u.getEdad()}</td><td>${u.getIngresos_mensuales()}</td><td>${u.getFecha()}</td>
<td><a href="edit.jsp?id=${u.getId()}">Editar</a></td>
<td><a href="delete.jsp?id=${u.getId()}">Borrar</a></td></tr>
</c:forEach>
</table>

</div>



<br/><a href="adduserform.jsp">Agregar usuario</a>



<jsp:include page="footer.jsp"></jsp:include>



<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.11.0/bootstrap-table.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.11.0/locale/bootstrap-table-zh-CN.min.js"></script>
</body>
</html>