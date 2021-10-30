<%-- 
    Document   : updateUser
    Created on : 4/10/2021, 12:00:02 PM
    Author     : Luis Jose
--%>

<%@page import="DTO.PersonaDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAOS.PersonaDAOS"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    PersonaDAOS persona = new PersonaDAOS();
    PersonaDTO persondto = new PersonaDTO();
    //Recogiendo y asignando los datos del formulario
    int id_pers = Integer.parseInt(request.getParameter("id_persona"));
    String cedu = request.getParameter("cedula");
    String nombre = request.getParameter("nombre");
    String seconomb = request.getParameter("segundo_nombre");
    String apellido = request.getParameter("apellido");
    String seconapellido = request.getParameter("segundo_apellido");
    String telefono = request.getParameter("telefono");
    String email = request.getParameter("email");

    if (cedu != null && nombre != null && seconomb != null && apellido != null
            && seconapellido != null && telefono != null && email != null) {
        //Asignando DTO
        persondto.setId_persona(id_pers);
        persondto.setCedula(cedu);
        persondto.setName(nombre);
        persondto.setMiddlename(seconomb);
        persondto.setLastname(apellido);
        persondto.setSecondlasname(seconapellido);
        persondto.setTelefono(telefono);
        persondto.setEmail(email);

        boolean actualizar = persona.updatePerson(persondto);
        if (actualizar) {
            out.println("actualizo");
        } else {
            out.println("no actualizo");
        }
    }
    else{
        response.sendRedirect("../views/includes/updateUserView.jsp");
    }


%>
