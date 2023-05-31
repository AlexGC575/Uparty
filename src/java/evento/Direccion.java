package evento;
// Generated Apr 28, 2023 8:10:23 AM by Hibernate Tools 4.3.1



/**
 * Direccion generated by hbm2java
 */
public class Direccion  implements java.io.Serializable {


     private DireccionId id;
     private Usuario usuario;
     private String provincia;
     private int codigoPostal;
     private String calle;
     private int numero;

    public Direccion() {
    }

    public Direccion(DireccionId id, Usuario usuario, String provincia, int codigoPostal, String calle, int numero) {
       this.id = id;
       this.usuario = usuario;
       this.provincia = provincia;
       this.codigoPostal = codigoPostal;
       this.calle = calle;
       this.numero = numero;
    }
   
    public DireccionId getId() {
        return this.id;
    }
    
    public void setId(DireccionId id) {
        this.id = id;
    }
    public Usuario getUsuario() {
        return this.usuario;
    }
    
    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }
    public String getProvincia() {
        return this.provincia;
    }
    
    public void setProvincia(String provincia) {
        this.provincia = provincia;
    }
    public int getCodigoPostal() {
        return this.codigoPostal;
    }
    
    public void setCodigoPostal(int codigoPostal) {
        this.codigoPostal = codigoPostal;
    }
    public String getCalle() {
        return this.calle;
    }
    
    public void setCalle(String calle) {
        this.calle = calle;
    }
    public int getNumero() {
        return this.numero;
    }
    
    public void setNumero(int numero) {
        this.numero = numero;
    }




}

