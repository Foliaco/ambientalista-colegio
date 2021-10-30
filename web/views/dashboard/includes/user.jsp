<%-- 
    Document   : user
    Created on : 3/09/2021, 10:55:39 PM
    Author     : compaq-cq45
--%>

<%@page import="DTO.PersonaDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAOS.RolDAOS"%>
<%@page import="DAOS.PersonaDAOS"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    int id=Integer.parseInt(request.getParameter("id_person"));
    PersonaDAOS prs=new PersonaDAOS();
    RolDAOS rolDaos=new RolDAOS();
    ArrayList<PersonaDTO> p=prs.getOnePerson(id);
    String rol= rolDaos.getOneCredencialPerson(id);
%>
<li class='user-item' id="card-<%=request.getParameter("telefono")%>">
    <div class='user-header'>
        <div class='photo-user'>
            <i class='fas fa-user-circle'></i>
        </div>
        <h3><%= request.getParameter("nombre") + " " + request.getParameter("middlename") + " " + request.getParameter("lastname") + " " + request.getParameter("secondLastname")%></h3>

    </div>
    <div clas='user-body'>
        <h4>N° de documento: <%= request.getParameter("cedula")%></h4>
        <h4>Email: <%= request.getParameter("email")%></h4>
        <h4>Telefono: <%= request.getParameter("telefono")%></h4>
        <h4>Rol: <%= rol %></h4>
    </div>
    <div class="funtions" style="display: flex; float: left; margin-left: 30% ">
        <div>

        <a href='/eaci/views/dashboard/includes/updateUserView.jsp?user=<%= request.getParameter("id_person")%>' ><i class='fas fa-edit'></i></a>
        <a href='/eaci/control/deleteUser.jsp?user=<%= request.getParameter("id_person")%>'><i class='fas fa-trash'></i></a>
            
        </div>
    </div>
</li>
