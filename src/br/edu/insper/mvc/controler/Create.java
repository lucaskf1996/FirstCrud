package br.edu.insper.mvc.controler;
import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.insper.mvc.model.DAO;
import br.edu.insper.mvc.model.Notas;
 
/**
  * Servlet implementation class Exemplo
 * @param <Pessoa>
  */

 @WebServlet("/Create")

 public class Create extends HttpServlet {
     private static final long serialVersionUID = 1L;
     /**
      * @see HttpServlet#HttpServlet()
      */

     public Create() {
         super();
         // TODO Auto-generated constructor stub
     }
 
    /**
      * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
      */

     protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         // TODO Auto-generated method stub
         
    	 RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/CreateNote.jsp");
         dispatcher.forward(request, response);
     }

     protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	 // TODO Auto-generated method stub
    	 try {
			DAO dao = new DAO();
			Notas nota = new Notas();
			nota.setNome(request.getParameter("nome"));
			nota.setNota(request.getParameter("nota"));
			Date data = new Date(System.currentTimeMillis());
			nota.setData(data);
			dao.adiciona(nota);
			dao.close();
			
			
			
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	 RequestDispatcher dispatcher = request.getRequestDispatcher("Lista");
     dispatcher.forward(request, response);
         
     }
 }