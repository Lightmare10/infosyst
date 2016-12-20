package com.infosyst.dao;

import java.sql.*;

import java.util.ArrayList;
import java.util.List;
import com.infosyst.bean.*;


public class userDao {
public static Connection getConnection(){
	Connection con=null;
	try{
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Examen","root","1234");
	}catch(Exception e){System.out.println(e);}
	return con;
}

public static int save(User u){
	int status=0;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("insert into infosyst(Nombre,Apellido_Paterno,Apellido_Materno,Email,Edad,Ingresos_Mensuales,Fecha_Ingreso) values(?,?,?,?,?,?,?)");
	ps.setString(1, u.getNombre());
	ps.setString(2, u.getApellido_paterno());
	ps.setString(3, u.getApellido_materno());
	ps.setString(4, u.getEmail());
	ps.setInt(5, u.getEdad());
	ps.setFloat(6, u.getIngresos_mensuales());
	ps.setString(7, u.getFecha());
	status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}
	return status;
}

public static int update(User u){
	int status=0;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("update infosyst set Nombre = ?, Apellido_Paterno = ?, Apellido_Materno = ?, Email = ?, Edad = ?, Ingresos_Mensuales = ?, Fecha_Ingreso = ? where id = ?");
		ps.setString(1, u.getNombre());
		ps.setString(2, u.getApellido_paterno());
		ps.setString(3, u.getApellido_materno());
		ps.setString(4, u.getEmail());
		ps.setInt(5, u.getEdad());
		ps.setFloat(6, u.getIngresos_mensuales());
		ps.setString(7, u.getFecha());
		ps.setInt(8, u.getId());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}
	return status;
}

public static int delete(User u){
	int status=0;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("delete from infosyst where id=?");
		ps.setInt(1, u.getId());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}
	return status;
}

public static List<User> getAllRecords(){
	List<User> list=new ArrayList<User>();
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from infosyst");
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			User u=new User();
			u.setId(rs.getInt("id"));
			u.setNombre(rs.getString("Nombre"));
			u.setApellido_paterno(rs.getString("Apellido_Paterno"));
			u.setApellido_materno(rs.getString("Apellido_Materno"));
			u.setEmail(rs.getString("Email"));
			u.setEdad(rs.getInt("Edad"));
			u.setIngresos_mensuales(rs.getFloat("Ingresos_Mensuales"));
			u.setFecha(formatFecha(rs.getString("Fecha_Ingreso")));
			
			
			list.add(u);
		}
	}catch(Exception e){System.out.println(e);}
	return list;
}

public static User getRecordById(int id){
	User u=null;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from infosyst where id=?");
		ps.setInt(1,id);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			u=new User();
			u.setId(rs.getInt("id"));
			u.setNombre(rs.getString("Nombre"));
			u.setApellido_paterno(rs.getString("Apellido_Paterno"));
			u.setApellido_materno(rs.getString("Apellido_Materno"));
			u.setEmail(rs.getString("Email"));
			u.setEdad(rs.getInt("Edad"));
			u.setIngresos_mensuales(rs.getFloat("Ingresos_Mensuales"));
			u.setFecha(rs.getString("Fecha_ingreso"));
		}
	}catch(Exception e){System.out.println(e);}
	return u;
}




public static String formatFecha(String fecha) {
  
	String str = fecha;
	String[] temp = str.split("-");
	String nueva=temp[2]+"-"+temp[1]+"-"+temp[0];
	return  nueva;
}



public static List<User> getRecordByNombre(String nombre){
	List<User> list=new ArrayList<User>();

	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from infosyst where Nombre=?");
		ps.setString(1,nombre);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			User u=new User();
			u.setId(rs.getInt("id"));
			u.setNombre(rs.getString("Nombre"));
			u.setApellido_paterno(rs.getString("Apellido_Paterno"));
			u.setApellido_materno(rs.getString("Apellido_Materno"));
			u.setEmail(rs.getString("Email"));
			u.setEdad(rs.getInt("Edad"));
			u.setIngresos_mensuales(rs.getFloat("Ingresos_Mensuales"));
			u.setFecha(formatFecha(rs.getString("Fecha_Ingreso")));
			list.add(u);
		}
	}catch(Exception e){System.out.println(e);}
	return list;
}



public static List<User> getRecordByApellido(String apellido){
	List<User> list=new ArrayList<User>();

	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from infosyst where Apellido_Paterno=? OR Apellido_Materno=?");
		ps.setString(1,apellido);
		ps.setString(2,apellido);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			User u=new User();
			u.setId(rs.getInt("id"));
			u.setNombre(rs.getString("Nombre"));
			u.setApellido_paterno(rs.getString("Apellido_Paterno"));
			u.setApellido_materno(rs.getString("Apellido_Materno"));
			u.setEmail(rs.getString("Email"));
			u.setEdad(rs.getInt("Edad"));
			u.setIngresos_mensuales(rs.getFloat("Ingresos_Mensuales"));
			u.setFecha(formatFecha(rs.getString("Fecha_Ingreso")));
			list.add(u);
		}
	}catch(Exception e){System.out.println(e);}
	return list;
}





public static List<User> getRecordByEdad(int edad){
	List<User> list=new ArrayList<User>();

	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from infosyst where Edad=?");
		ps.setInt(1,edad);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			User u=new User();
			u.setId(rs.getInt("id"));
			u.setNombre(rs.getString("Nombre"));
			u.setApellido_paterno(rs.getString("Apellido_Paterno"));
			u.setApellido_materno(rs.getString("Apellido_Materno"));
			u.setEmail(rs.getString("Email"));
			u.setEdad(rs.getInt("Edad"));
			u.setIngresos_mensuales(rs.getFloat("Ingresos_Mensuales"));
			u.setFecha(formatFecha(rs.getString("Fecha_Ingreso")));
			list.add(u);
		}
	}catch(Exception e){System.out.println(e);}
	return list;
}



public static List<User> getRecordByIngresos(float ingresos1,float ingresos2){
	List<User> list=new ArrayList<User>();

	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from infosyst where Ingresos_Mensuales between ? and ?");
		ps.setFloat(1,ingresos1);
		ps.setFloat(2,ingresos2);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			User u=new User();
			u.setId(rs.getInt("id"));
			u.setNombre(rs.getString("Nombre"));
			u.setApellido_paterno(rs.getString("Apellido_Paterno"));
			u.setApellido_materno(rs.getString("Apellido_Materno"));
			u.setEmail(rs.getString("Email"));
			u.setEdad(rs.getInt("Edad"));
			u.setIngresos_mensuales(rs.getFloat("Ingresos_Mensuales"));
			u.setFecha(formatFecha(rs.getString("Fecha_Ingreso")));
			list.add(u);
		}
	}catch(Exception e){System.out.println(e);}
	return list;
}


public static List<User> getRecordByFecha(String fecha){
	List<User> list=new ArrayList<User>();

	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from infosyst where Fecha_Ingreso=?");
		ps.setString(1,fecha);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			User u=new User();
			u.setId(rs.getInt("id"));
			u.setNombre(rs.getString("Nombre"));
			u.setApellido_paterno(rs.getString("Apellido_Paterno"));
			u.setApellido_materno(rs.getString("Apellido_Materno"));
			u.setEmail(rs.getString("Email"));
			u.setEdad(rs.getInt("Edad"));
			u.setIngresos_mensuales(rs.getFloat("Ingresos_Mensuales"));
			u.setFecha(formatFecha(rs.getString("Fecha_Ingreso")));
			list.add(u);
		}
	}catch(Exception e){System.out.println(e);}
	return list;
}




}





