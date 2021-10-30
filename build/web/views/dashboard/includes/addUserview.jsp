<%-- 
    Document   : addUser
    Created on : 15/09/2021, 05:30:07 PM
    Author     : Luis Jose
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page='../../includes/header.jsp' >
    <jsp:param name='css' value='../css/index.css' />
</jsp:include>
    
        <div class="nav">
            <a href="../usuarios.jsp"><i class="fas fa-arrow-circle-left"></i>Regresar</a>  
        </div>
    
    
    <div class="formdata">
        
    <form action="../../../control/addUser.jsp" method="post" class="">
        <div class="control">
            <label for="cedula" class="form-label">Cedula</label>
            <input type="text" name="cedula" aria-describedby="emailHelp">

        </div>

        <div class="control">
            <label for="nombre" class="form-label">Primer Nombre</label>
            <input type="text" name="nombre" required>
        </div>

        <div class="control">
            <label for="segundo_nombre" class="form-label">Segundo Nombre</label>
            <input type="text" name="segundo_nombre">
        </div>
        
        <div class="control">
            <label for="apellido" class="form-label">Primer Apellido</label>
            <input type="text" name="apellido" required>
        </div>
        
        <div class="control">
            <label for="segundo_apellido" class="form-label">Segundo Apellido</label>
            <input type="text"  name="segundo_apellido">
        </div>
        
        <div class="control">
            <label for="telefono" class="form-label">Telefono</label>
            <input type="text" name="telefono" required>
        </div>
        
        <div class="control">
            <label for="email">Email</label>
            <input type="text"  name="email" required>
        </div>
        
        <button type="submit">Submit</button>
    </form>
    
 </div>
