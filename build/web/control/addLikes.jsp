<%@page import="DAOS.PublicacionDAOS"%>
<%@page import="DTO.LikeDTO"%>
<%@page import="DAOS.LikeDAOS"%>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       <%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page session="true" %>
    <%
        HttpSession sesion=request.getSession();
        PublicacionDAOS pudao = new PublicacionDAOS();
        int idPost = Integer.parseInt(request.getParameter("id_public"));
        if(sesion.getAttribute("name") != null || request.getAttribute("id_pub") == ""){
            LikeDTO likedto = new LikeDTO();
            LikeDAOS likeando = new LikeDAOS();
            likedto.setId_post(idPost);
            likedto.setId_user((Integer)session.getAttribute("persona"));
            boolean quitar = likeando.DeleteLike(likedto);
            
            if(quitar){
                int disklike = pudao.deletenumlike(idPost);
                response.sendRedirect("../views/options/public.jsp?id_public="+idPost+"&sucessdislike=true");
            }
            else{
               boolean agregar = likeando.NewLike(likedto);
               if(agregar){
                   
                   int addlike = pudao.addnumlike(idPost);
                   response.sendRedirect("../views/options/public.jsp?id_public="+idPost+"&sucesslike=true");
               }
               else{
                   response.sendRedirect("../index.jsp?error=true");
               }
            }
            
        }
        else{
            %> 
            
            <script>
                alert("Inicia sesion para poder reaccionar a las publicaciones");
                window.location.href = "../index.jsp";           
            </script>
            <%    
        } %>
        
    %>