package DAOS;

import DTO.RolDTO;
import config.Database;
import interfaces.RolInterfaz;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class RolDAOS implements RolInterfaz{
        
    Database DB=new Database();
    Connection conex=null;
    ResultSet rs;
    Statement stm;
    String sql;
    boolean check=false;
    
    @Override
    public ArrayList<RolDTO> getsRol() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    public ArrayList<RolDTO> getOne(Integer id){
       
        try{
            sql="SELECT rols.id_rol,rols.rol FROM `rols` WHERE rols.id_rol="+id+"";
            conex=DB.conect();
            stm=conex.createStatement();
            rs=stm.executeQuery(sql); 
            
            ArrayList <RolDTO> rol = new ArrayList();
            while(rs.next()){
                RolDTO data=new RolDTO();
                data.setId_rol(rs.getInt("id_rol"));
                data.setRol(rs.getString("rol"));
                rol.add(data);
            }
            return rol;
        }
        catch(Exception e){
            System.out.print(e);
            return null;
        }
    }
    
    public String getOneCredencialPerson(Integer id){
       String rol="";
        try{
            sql="select rols.rol from rols,credenciales where credenciales.id_rol=rols.id_rol and credenciales.id_persona="+id+"";
            conex=DB.conect();
            stm=conex.createStatement();
            rs=stm.executeQuery(sql); 
            
            
            while(rs.next()){
               rol=rs.getString("rol");
            }
            return rol;
        }
        catch(Exception e){
            System.out.print(e);
            return null;
        }
    }
    public int getOneCredencialPersonInt(Integer id){
       int rol=0;
        try{
            sql="select rols.rol,rols.id_rol from rols,credenciales where credenciales.id_rol=rols.id_rol and credenciales.id_persona="+id+"";
            conex=DB.conect();
            stm=conex.createStatement();
            rs=stm.executeQuery(sql); 
            
            
            while(rs.next()){
               rol=rs.getInt("id_rol");
            }
            return rol;
        }
        catch(Exception e){
            System.out.print(e);
            return 0;
        }
    }
    
}
