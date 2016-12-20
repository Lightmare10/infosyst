<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="diseno.css" rel="stylesheet" type="text/css">
<title>Agregar</title>
</head>
<body>
<jsp:include page="barra.jsp"></jsp:include>
<div class="container">
<form class="form-horizontal" role="form" action="addregister.jsp" method="post">

<div class="form-group">
 <label for="nombre" class="col-xs-4 control-label">Nombre</label>
    <div class="col-xs-4">
      <input maxlength="100" type="text" class="form-control" id="nombre" name="nombre"
             placeholder="Introduce Nombre" required>
  </div>
  </div>
  
  <div class="form-group">
 <label for="apellido_paterno" class="col-xs-4 control-label">Apellido Paterno</label>
<div class="col-xs-4">
      <input maxlength="100" type="text" class="form-control" id="apellido_paterno" name="apellido_paterno"
             placeholder="Introduce Apellido paterno" required>
  </div>
  </div>
  
    <div class="form-group">
 <label for="apellido_materno" class="col-xs-4 control-label">Apellido Materno</label>
<div class="col-xs-4">
      <input maxlength="100" type="text" class="form-control" id="apellido_materno" name="apellido_materno"
             placeholder="Introduce Apellido materno" required>
  </div>
  </div>
  
    <div class="form-group">
 <label for="email" class="col-xs-4 control-label">Email</label>
<div class="col-xs-4">
      <input maxlength="100" type="email" class="form-control" id="email" name="email"
             placeholder="Introduce Email" required>
  </div>
  </div>
  
    <div class="form-group">
 <label for="edad" class="col-xs-4 control-label">Edad</label>
<div class="col-xs-4">
      <input maxlength="3" type="number" class="form-control" id="edad" name="edad"
             placeholder="Introduce Edad" required>
  </div>
  </div>
  
      <div class="form-group">
 <label for="ingresos_mensuales" class="col-xs-4 control-label">Ingresos Mensuales</label>
<div class="col-xs-4">
      <input maxlength="7"  type="number" step="any" class="form-control" id="ingresos_mensuales" name="ingresos_mensuales" 
             placeholder="Introduce Ingresos mensuales" required>
  </div>
  </div>

    <div class="form-group">
 <label for="fecha" class="col-xs-4 control-label">Fecha ingreso</label>
<div class="col-xs-4">
      <input type="date" class="form-control" id="fecha" name="fecha" required>
            
  </div>
  </div>

 <div class="form-group">
    <div class="col-xs-offset-4 col-xs-4">
      <button type="submit" class="btn btn-primary">Enviar</button>
    </div>
  </div>


</form>
</div>
<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>