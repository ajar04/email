package ufps.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ufps.util.Utilidad;

/**
 * Servlet implementation class Correo
 */
@WebServlet("/Correo")
public class CorreoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CorreoController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String sitio = request.getParameter("website");
		String message = request.getParameter("message");
		
		ufps.bean.Mensaje mensaje = new ufps.bean.Mensaje();
		mensaje.setName(name);
		mensaje.setEmail(email);
		mensaje.setWebsite(sitio);
		mensaje.setMessage(message);
		
		Utilidad u = new Utilidad();
		Boolean resultado = u.enviarCorreo(mensaje);
		
		request.setAttribute("mensaje", mensaje); //with setAttribute() you can define a "key" and value pair so that you can get it in future using getAttribute("key")
		
		
		if(resultado){
			request.setAttribute("info", "El mensaje se ha enviado correctamente");
			request.getRequestDispatcher("/resultado.jsp").forward(request, response);
		}else{
			request.setAttribute("info", "Se ha presentado un error en el envio del formulario");
			request.getRequestDispatcher("/formulario.jsp").forward(request, response);
		}
	}

}
