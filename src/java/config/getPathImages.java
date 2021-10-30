/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package config;

import java.io.File;

/**
 *
 * @author compaq-cq45
 */
public class getPathImages {
    
    public void getPath(){
        
        File f=new File("");
        
        System.out.print(f.getAbsoluteFile());
        
        //return "";
    }
    
}
