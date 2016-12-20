<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Modificar Registro</title>
<link href="diseno.css" rel="stylesheet" type="text/css">
</head>
<body>
<jsp:include page="barra.jsp"></jsp:include>
<%@page import="com.infosyst.dao.userDao,com.infosyst.bean.User" %>
<% String id=request.getParameter("id");
User u=userDao.getRecordById(Integer.parseInt(id));
%>

<div class="container">
<form class="form-horizontal" role="form" action="editregister.jsp" method="post">

<div class="form-group">
 <label for="nombre" class="col-xs-4 control-label">Nombre</label>
    <div class="col-xs-4">
      <input maxlength="100" type="text" class="form-control" id="nombre" name="nombre"
             value="<%=u.getNombre()%>">
  </div>
  </div>
  
  <div class="form-group">
 <label for="apellido_paterno" class="col-xs-4 control-label">Apellido Paterno</label>
<div class="col-xs-4">
      <input maxlength="100" type="text" class="form-control" id="apellido_paterno" name="apellido_paterno"
            value="<%=u.getApellido_paterno()%>">
  </div>
  </div>
  
    <div class="form-group">
 <label for="apellido_materno" class="col-xs-4 control-label">Apellido Materno</label>
<div class="col-xs-4">
      <input maxlength="100" type="text" class="form-control" id="apellido_materno" name="apellido_materno"
             value="<%=u.getApellido_materno()%>">
  </div>
  </div>
  
    <div class="form-group">
 <label for="email" class="col-xs-4 control-label">Email</label>
<div class="col-xs-4">
      <input maxlength="100" type="email" class="form-control" id="email" name="email"
             value="<%=u.getEmail()%>">
  </div>
  </div>
  
    <div class="form-group">
 <label for="edad" class="col-xs-4 control-label">Edad</label>
<div class="col-xs-4">
      <input maxlength="3" type="text" class="form-control" id="edad" name="edad"
             value="<%=u.getEdad()%>">
  </div>
  </div>
  
      <div class="form-group">
 <label for="ingresos_mensuales" class="col-xs-4 control-label">Ingresos Mensuales</label>
<div class="col-xs-4">
      <input maxlength="7" type="text" class="form-control" id="ingresos_mensuales" name="ingresos_mensuales" 
             value="<%=u.getIngresos_mensuales()%>">
  </div>
  </div>

    <div class="form-group">
 <label for="fecha" class="col-xs-4 control-label">Fecha ingreso</label>
<div class="col-xs-4">
      <input type="date" class="form-control" id="fecha" name="fecha" value="<%=u.getFecha()%>">
            
  </div>
  </div>

 <div class="form-group">
    <div class="col-xs-offset-4 col-xs-4">
      <button type="submit" class="btn btn-primary">Enviar</button>
    </div>
  </div>


</form>
</div>


<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
<jsp:include page="footer.jsp"></jsp:include>

  
</body>
</html>