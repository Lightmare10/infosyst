package com.infosyst.bean;

public class User {
private int id,edad;
private String nombre,apellido_paterno,apellido_materno,email,fecha;
private float ingresos_mensuales;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public int getEdad() {
	return edad;
}
public void setEdad(int edad) {
	this.edad = edad;
}
public String getNombre() {
	return nombre;
}
public void setNombre(String nombre) {
	this.nombre = nombre;
}
public String getApellido_paterno() {
	return apellido_paterno;
}
public void setApellido_paterno(String apellido_paterno) {
	this.apellido_paterno = apellido_paterno;
}
public String getApellido_materno() {
	return apellido_materno;
}
public void setApellido_materno(String apellido_materno) {
	this.apellido_materno = apellido_materno;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getFecha() {
	return fecha;
}
public void setFecha(String fecha) {
	this.fecha = fecha;
}
public float getIngresos_mensuales() {
	return ingresos_mensuales;
}
public void setIngresos_mensuales(float ingresos_mensuales) {
	this.ingresos_mensuales = ingresos_mensuales;
}




}
