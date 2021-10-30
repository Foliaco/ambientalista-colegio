<%-- 
    Document   : deleteUser
    Created on : 6/10/2021, 05:59:57 PM
    Author     : Luis Jose
--%>

<%@page import="DAOS.PersonaDAOS"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>

<% 
    HttpSession sesion=request.getSession();
    if(sesion.getAttribute("name")==null || sesion.getAttribute("rol")==null || sesion.getAttribute("persona")==null){
        System.out.print(""+sesion.getAttribute("name") + sesion.getAttribute("rol") + sesion.getAttribute("persona"));
        response.sendRedirect("../login.jsp");
        return;
    }
    
    int id_us = Integer.parseInt(request.getParameter("user"));
    PersonaDAOS persondaos = new PersonaDAOS();
    
    boolean eliminar = persondaos.eliminarPerson(id_us);
    
    if(eliminar){
        sesion.setAttribute("delete","ok");
        sesion.setAttribute("msj","El usuario fue eliminado exitosamente");
        response.sendRedirect("../views/dashboard/usuarios.jsp");
    }
    
%>