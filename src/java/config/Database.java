/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package config;

import java.sql.Connection;
import java.sql.DriverManager;
/**
 *
 * @author compaq-cq4 
 */
public class Database {
    String driver="com.mysql.jdbc.Driver";
    String user="root";
    String pass="VDliGecnLc";
    String db="jdbc:mysql://node82715-env-8156362.jelastic.saveincloud.net:3306/colegio_ambientalista";
    Connection conex=null;
    
    public Connection conect(){
        try{
            Class.forName(driver);
            conex=DriverManager.getConnection(db,user,pass);
            System.out.println("connect success");
            
        }
        catch(Exception e){
            System.out.println("error en la conexion \n"+e);
        }
        return conex;
    }

    public Connection getDatabase(){
        if(conex==null){
            new Database();
            return conex;
        }
        return conex;     
    }
}

