/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package persistence;

import entities.Sheetmusic;
import entities.User;
import exception.MusicException;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.PersistenceUnit;

/**
 *
 * @author alu2014044
 */
@Stateless
public class MusicEjb {

    @PersistenceUnit EntityManagerFactory emf;
    
      public void insertUser(User u) throws MusicException{
        EntityManager em = emf.createEntityManager();
        User exist = em.find(User.class, u.getUsername());
        if(exist != null){
            throw new MusicException("EL usuario ya existe");
        }
            
        em.persist(u);
        em.close();
    }
      
      public User loginUser(String username, String password)throws MusicException{
          
          EntityManager em = emf.createEntityManager();
          User exist = em.find(User.class, username);
          
          if(exist != null){
              
              if(password.equals(exist.getPassword())){
                  
                  return exist;
              }else{
                  throw new MusicException("Password incorrecta");
              }
          }
          
          return null;
      }
      
      
      public void insertSheetmusic(Sheetmusic sheetmusic) throws MusicException{
          
            EntityManager em = emf.createEntityManager();
            Sheetmusic s1 = em.find(Sheetmusic.class, sheetmusic.getTitle());
            
            if(s1 != null){          
                throw new MusicException("La Partitura ya existe");      
            }         
            em.persist(sheetmusic);
            em.close(); 
      }
    
}
