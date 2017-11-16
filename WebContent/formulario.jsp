<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Formulario de Contacto</title>
<link href="css/estilo.css" rel="stylesheet" /> 
</head>
<body>
<form class="contact_form" parent="_blank" method="POST" action="Correo" id="contact_form" runat="server">

<div> 
	<ul> 
	<li> <h2>Contactos</h2> <span class="required_notification">* Datos requeridos</span> 
		</li> 
	<li> <label for="name">Nombre:</label> <input type="text" name="name" 
		placeholder="Carlos Angarita" required /></li> 
	<li> <label for="email">Email:</label> <input type="email" name="email" 
		placeholder="info@dominio.com" required /> <span class="form_hint">Formato correcto: "name@dominio.com"</span></li> 
	<li> <label for="website">Sitio web:</label> <input type="url" name="website" 
		placeholder="http://dominio.com" required pattern="(http|https)://.+" /> 
		<span class="form_hint">Formato correcto: "http://dominio.com"</span></li> 
	<li> <label for="message">Mensaje:</label> <textarea name="message" cols="40" rows="6" required></textarea> 
		</li> 
	<li> <button class="submit" type="submit">Enviar mensaje</button> 
		</li> 
	</ul> 
	</div> 
</form> 
</body>
</html>