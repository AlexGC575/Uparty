package evento;
// Generated Apr 28, 2023 8:10:23 AM by Hibernate Tools 4.3.1



/**
 * Rese�a generated by hbm2java
 */
public class Reseña  implements java.io.Serializable {


     private Integer id;
     private Usuario usuario;
     private String titulo;
     private String opinion;
     private int calificacion;
     private int evento;

    public Reseña() {
    }

	
    public Reseña(Usuario usuario, String titulo, String opinion, int calificacion, int evento) {
        this.usuario = usuario;
        this.titulo = titulo;
        this.opinion = opinion;
        this.calificacion = calificacion;
        this.evento = evento;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public Usuario getUsuario() {
        return this.usuario;
    }
    
    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }
    public String getTitulo() {
        return this.titulo;
    }
    
    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }
    public String getOpinion() {
        return this.opinion;
    }
    
    public void setOpinion(String opinion) {
        this.opinion = opinion;
    }
    public int getCalificacion() {
        return this.calificacion;
    }
    
    public void setCalificacion(int calificacion) {
        this.calificacion = calificacion;
    }
    public int getEvento() {
        return this.evento;
    }
    
    public void setEvento(int evento) {
        this.evento = evento;
    }

}


