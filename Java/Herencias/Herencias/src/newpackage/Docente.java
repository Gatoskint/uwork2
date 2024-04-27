package newpackage;

public class Docente extends Persona {
    private String codigoDoceente;
    private String especialidad;
    private String correoDocente;

    public Docente(String codigoDoceente, String especialidad, String correoDocente, String Nombre, String Apellido, int Edad) {
        super(Nombre, Apellido, Edad);
        this.codigoDoceente = codigoDoceente;
        this.especialidad = especialidad;
        this.correoDocente = correoDocente;
    }

    public Docente(String codigoDoceente, String especialidad, String Nombre, String Genero) {
        super(Nombre, Genero);
        this.codigoDoceente = codigoDoceente;
        this.especialidad = especialidad;
    }
    

    public String getCodigoDoceente() {
        return codigoDoceente;
    }

    public void setCodigoDoceente(String codigoDoceente) {
        this.codigoDoceente = codigoDoceente;
    }

    public String getEspecialidad() {
        return especialidad;
    }

    public void setEspecialidad(String especialidad) {
        this.especialidad = especialidad;
    }

    public String getCorreoDocente() {
        return correoDocente;
    }

    public void setCorreoDocente(String correoDocente) {
        this.correoDocente = correoDocente;
    }
    
    
    
}
