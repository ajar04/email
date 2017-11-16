<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Formulario de Respuesta</title>
<link href="css/estilo.css" rel="stylesheet" /> 
</head>
<body>
<form class="contact_form" parent="_blank" id="contact_form"> 
<jsp:useBean id="mensaje" type="ufps.bean.Mensaje" scope="request"> </jsp:useBean>
 


<div> 
	<ul> 
	<li> <h2>Contactos</h2> <span class="required_notification">* Datos requeridos</span> 
		</li> 
	<li> <label for="name">Nombre:</label> <jsp:getProperty name="mensaje" property="name"/></li> 
	<li> <label for="email">Email:</label> <jsp:getProperty name="mensaje" property="email"/></li> 
	<li> <label for="website">Sitio web:</label> <jsp:getProperty name="mensaje" property="website"/> </li> 
	<li> <label for="message">Mensaje:</label> <textarea name="message" cols="40" rows="6" required><jsp:getProperty name="mensaje" property="message"/> </textarea> 
		</li> 
	<li> <a href="index.jsp">Index</a> <a href="formulario.jsp">Formulario</a>
		</li> 
	</ul> 
	</div> 
</form> 
</body>
</html>