function nombrefunction(){
	if (document.form.nombre.value!=""){
		document.form.action="querynombre.jsp";
		document.form.submit();
	
	}else{
		pru.innerHTML="Llene el campo";
	}
}

function apellidofunction(){
	if (document.form.apellido.value!=""){
		document.form.action="queryapellido.jsp";
		document.form.submit();
	
	}else{
		pru.innerHTML="Llene el campo";
	}
}

function edadfunction(){
	if (document.form.edad.value!=""){
		document.form.action="queryedad.jsp";
		document.form.submit();
	
	}else{
		pru.innerHTML="Llene el campo";
	}
}

function ingresosfunction(){
	if (document.form.ingresos1.value!=""&document.form.ingresos2.value!=""){
		document.form.action="queryingresos.jsp";
		document.form.submit();
	
	}else{
		pru.innerHTML="Llene el campo";
	}
}

function fechafunction(){
	if (document.form.fecha.value!=""){
		document.form.action="queryfecha.jsp";
		document.form.submit();
	
	}else{
		pru.innerHTML="Llene el campo";
	}
}