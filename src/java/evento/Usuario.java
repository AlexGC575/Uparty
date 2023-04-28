package evento;
// Generated Apr 28, 2023 8:10:23 AM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Usuario generated by hbm2java
 */
public class Usuario  implements java.io.Serializable {


     private String email;
     private String contrasena;
     private Set mensajes = new HashSet(0);
     private Set eventos = new HashSet(0);
     private Set pagos = new HashSet(0);
     private Set direccions = new HashSet(0);
     private Set resenas = new HashSet(0);

    public Usuario() {
    }

	
    public Usuario(String email, String contrasena) {
        this.email = email;
        this.contrasena = contrasena;
    }
    public Usuario(String email, String contrasena, Set mensajes, Set eventos, Set pagos, Set direccions, Set resenas) {
       this.email = email;
       this.contrasena = contrasena;
       this.mensajes = mensajes;
       this.eventos = eventos;
       this.pagos = pagos;
       this.direccions = direccions;
       this.resenas = resenas;
    }
   
    public String getEmail() {
        return this.email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }
    public String getContrasena() {
        return this.contrasena;
    }
    
    public void setContrasena(String contrasena) {
        this.contrasena = contrasena;
    }
    public Set getMensajes() {
        return this.mensajes;
    }
    
    public void setMensajes(Set mensajes) {
        this.mensajes = mensajes;
    }
    public Set getEventos() {
        return this.eventos;
    }
    
    public void setEventos(Set eventos) {
        this.eventos = eventos;
    }
    public Set getPagos() {
        return this.pagos;
    }
    
    public void setPagos(Set pagos) {
        this.pagos = pagos;
    }
    public Set getDireccions() {
        return this.direccions;
    }
    
    public void setDireccions(Set direccions) {
        this.direccions = direccions;
    }
    public Set getResenas() {
        return this.resenas;
    }
    
    public void setResenas(Set resenas) {
        this.resenas = resenas;
    }




}

