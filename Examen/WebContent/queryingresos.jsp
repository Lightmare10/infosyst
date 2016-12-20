<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.11.0/bootstrap-table.min.css">
<link href="diseno.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Buscar por Ingresos</title>
</head>
<script src="funcionesquery.js"></script>
<body>
<%@page import="com.infosyst.dao.userDao, com.infosyst.bean.*,java.util.*" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="com.infosyst.dao.userDao" %>
<jsp:include page="barra.jsp"></jsp:include>
<%
float ingresos1=Float.parseFloat(request.getParameter("ingresos1"));
float ingresos2=Float.parseFloat(request.getParameter("ingresos2"));

List<User> list= userDao.getRecordByIngresos(ingresos1,ingresos2);
request.setAttribute("list",list);
%>
<div class="container">

<div class="panel-group" id="accordion">
  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" name="nom" id="nom" data-parent="#accordion" href="#collapse1">
        Buscar por Nombre</a>
      </h4>
    </div>
    <div id="collapse1" class="panel-collapse collapse in">
      <div class="panel-body">
      <form name="form" id="form" role="form" method="post">
   		<div class="form-group">
   			<div class="col-lg-7">
    			<input type="text" class="form-control" id="nombre" name="nombre"
           			placeholder="Introduce Nombre a buscar">
         	<div id="pru"></div>
            </div>
             <div class="col-lg-1">
                 <button type="button" onclick="javascript:nombrefunction()"  class="btn btn-default">Buscar</button>
             </div>
  		</div>
      
    
      </div>
    </div>
  </div>
  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" name="ap" id="ap"  data-parent="#accordion" href="#collapse2">
        Buscar por Apellidos</a>
      </h4>
    </div>
    <div id="collapse2" class="panel-collapse collapse">
      <div class="panel-body">
         <div class="col-lg-7">
    <input type="text" class="form-control" id="apellido" name="apellido"
           placeholder="Introduce Nombre a buscar">
         
             </div>
              <div class="col-lg-1">
                   <button type="button" onclick="javascript:apellidofunction()"  class="btn btn-default">Buscar</button>
              </div>
  		</div>
      
      </div>
    </div>
  
    <div class="panel panel-default">
      <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" name="ed" id="ed"  data-parent="#accordion" href="#collapse3">
        	Buscar por Edad</a>
      </h4>
    </div>
    <div id="collapse3" class="panel-collapse collapse">
      <div class="panel-body">
         <div class="col-lg-7">
    		<input type="number" class="form-control" id="edad" name="edad"
           		placeholder="Introduce Edad a buscar">
         
          </div>
              <div class="col-lg-1">
                   <button type="button" onclick="javascript:edadfunction()"  class="btn btn-default">Buscar</button>
               </div>
 		 </div>
     </div>
    </div>


  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" name="ing" id="ing"  data-parent="#accordion" href="#collapse4">
        		Buscar por Ingresos</a>
      </h4>
    </div>
    <div id="collapse4" class="panel-collapse collapse">
      <div class="panel-body">
         <div class="col-lg-5">
    <input type="number" step="any" class="form-control" id="ingresos1" name="ingresos1"
           placeholder="Introduce Ingreso minimo a buscar">
         
             </div>
               <div class="col-lg-5">
   					 <input type="number" step="any" class="form-control" id="ingresos2" name="ingresos2"
           placeholder="Introduce Ingreso maximo a buscar">
         
             	</div>
              <div class="col-lg-1">
                   <button type="button" onclick="javascript:ingresosfunction()"  class="btn btn-default">Buscar</button>
               </div>
        </div>
 	 </div>
   	</div>




  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" name="fech" id="fech"  data-parent="#accordion" href="#collapse5">
        Buscar por Fecha</a>
      </h4>
    </div>
  <div id="collapse5" class="panel-collapse collapse">
      <div class="panel-body">
         <div class="col-lg-7">
    		<input type="date" class="form-control" id="fecha" name="fecha"
          		 placeholder="Introduce Edad a buscar">
         
             </div>
              <div class="col-lg-1">
                   <button type="button" onclick="javascript:fechafunction()"  class="btn btn-default">Buscar</button>
               </div>
 		 </div>
    	</div>
    </div>


</div>
</div>


<div class="container">
<div id="toolbar" ></div>
<table id="table" data-toolbar="#toolbar"
         data-toggle="table" border="1" width="90%">
<tr><th>Id</th><th>Nombre</th><th>Apellido Paterno</th><th>Apellido Materno</th><th>Email</th><th>Edad</th><th>Ingresos mensuales</th><th>Fecha Ingreso</th></tr>
<c:forEach items="${list}" var="u">
<tr><td>${u.getId()}</td><td>${u.getNombre()}</td><td>${u.getApellido_paterno()}</td><td>${u.getApellido_materno()}</td><td>${u.getEmail()}</td><td>${u.getEdad()}</td><td>${u.getIngresos_mensuales()}</td><td>${u.getFecha()}</td>
</tr>
</c:forEach>
</table>

</div>



<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.11.0/bootstrap-table.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.11.0/locale/bootstrap-table-zh-CN.min.js"></script>
</body>
</html>