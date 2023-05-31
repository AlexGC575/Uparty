package evento;
// Generated Apr 28, 2023 8:10:23 AM by Hibernate Tools 4.3.1



/**
 * AsistenteId generated by hbm2java
 */
public class AsistenteId  implements java.io.Serializable {


     private String dni;
     private int evento;

    public AsistenteId() {
    }

    public AsistenteId(String dni, int evento) {
       this.dni = dni;
       this.evento = evento;
    }
   
    public String getDni() {
        return this.dni;
    }
    
    public void setDni(String dni) {
        this.dni = dni;
    }
    public int getEvento() {
        return this.evento;
    }
    
    public void setEvento(int evento) {
        this.evento = evento;
    }


   public boolean equals(Object other) {
         if ( (this == other ) ) return true;
		 if ( (other == null ) ) return false;
		 if ( !(other instanceof AsistenteId) ) return false;
		 AsistenteId castOther = ( AsistenteId ) other; 
         
		 return ( (this.getDni()==castOther.getDni()) || ( this.getDni()!=null && castOther.getDni()!=null && this.getDni().equals(castOther.getDni()) ) )
 && (this.getEvento()==castOther.getEvento());
   }
   
   public int hashCode() {
         int result = 17;
         
         result = 37 * result + ( getDni() == null ? 0 : this.getDni().hashCode() );
         result = 37 * result + this.getEvento();
         return result;
   }   


}

