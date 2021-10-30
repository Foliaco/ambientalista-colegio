
<%@page import="DTO.PersonaDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAOS.PersonaDAOS"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    int id_us = Integer.parseInt(request.getParameter("user"));
    PersonaDAOS persona = new PersonaDAOS();
    ArrayList<PersonaDTO> listPerson = new ArrayList();

    listPerson = persona.getOnePerson(id_us);
    int id_persona = 0;
    String cedula = "";
    String nombrePersona = "";
    String secondname = "";
    String lastname = "";
    String secondLastname = "";
    String email = "";
    String telefono = "";
    for (PersonaDTO person : listPerson) {
        id_persona = person.getId_persona();
        cedula = person.getCedula();
        nombrePersona = person.getName();
        secondname = person.getMiddlename();
        lastname = person.getLastname();
        secondLastname = person.getSecondlasname();
        email = person.getEmail();
        telefono = person.getTelefono();
    }

    System.out.println(id_persona + " " + cedula + " " + nombrePersona + " " + lastname + " " + email);
%>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">
    <title>Actualizando datos del usuario</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@100&display=swap');
        *{
            text-decoration: none ;
        }

        .formdata{
            width: 500px;
            margin:auto;
            background-color: #F5F5F5;
            padding: 10px;
            border-radius: 16px;
            margin-top: 50px;
            text-align: center
        }
        .formdata div{
            text-align: justify;
        }
        label{
            font-family: 'Poppins', sans-serif;
            font-weight: bold;
        }
        .nav{
            background-color: #F6F8FA;
            width: 100%;
            padding: 10px;
            text-decoration: none;             
        } 
        .nav a{
            color:#F9A602;
            font-weight: bold;
            font-size: 18px;
            font-family: 'Poppins', sans-serif;
            text-decoration: none; 
            margin-right: 5px;
        }
        .nav a:hover{
            color:black;
        }
    </style>
</head>
<body>


    <div class="nav">
        <a href="../../dashboard/usuarios.jsp"><i class="fas fa-arrow-circle-left"></i>Regresar</a>  
    </div>


    <div class="formdata">
        <h4>Edite el campo que desee actualizar</h4>
        <form action="../../../control/updateUser.jsp"  method="post" class="">

            <div class="mb-3">
                <label for="id_persona" class="form-label">id_persona</label>
                <input type="text" class="form-control" value="<%= id_persona%>" readonly="" id="exampleInputEmail1" name="id_persona" aria-describedby="emailHelp">
            </div>

            <div class="mb-3">
                <label for="cedula" class="form-label">Cedula</label>
                <input type="text" class="form-control" value="<%= cedula%>" id="exampleInputEmail1" name="cedula" aria-describedby="emailHelp">

            </div>

            <div class="mb-3">
                <label for="nombre" class="form-label">Primer Nombre</label>
                <input type="text" class="form-control" value="<%= nombrePersona%>" id="exampleInputPassword1" name="nombre">
            </div>

            <div class="mb-3">
                <label for="segundo_nombre" class="form-label">Segundo Nombre</label>
                <input type="text" class="form-control" value="<%= secondname%>" id="exampleInputPassword1" name="segundo_nombre">
            </div>

            <div class="mb-3">
                <label for="apellido" class="form-label">Primer Apellido</label>
                <input type="text" class="form-control" value="<%= lastname%>" id="exampleInputPassword1" name="apellido">
            </div>

            <div class="mb-3">
                <label for="segundo_apellido" class="form-label">Segundo Apellido</label>
                <input type="text" class="form-control" value="<%= secondLastname%>" id="exampleInputPassword1" name="segundo_apellido">
            </div>

            <div class="mb-3">
                <label for="telefono" class="form-label">telefono</label>
                <input type="text" class="form-control" value="<%= telefono%>" id="exampleInputPassword1" name="telefono">
            </div>

            <div class="mb-3">
                <label for="email" class="form-label">Email</label>
                <input type="text" class="form-control" value="<%= email%>" id="exampleInputPassword1" name="email">
            </div>

            <button type="submit">Editar Datos</a></button>

        </form>

    </div>
</body>
