package newpackage;

//una empresa necesita registrar diferentes tipos de trabajadores para sus distintas areas

public class Trabajador extends Persona {
    private String codigoTrabajador;
    private String especialidad;
    private String DNI;

    public Trabajador(String codigoDoceente, String especialidad, String correoDocente, String Nombre, String Apellido, int Edad) {
        super(Nombre, Apellido, Edad);
        this.codigoTrabajador = codigoDoceente;
        this.especialidad = especialidad;
        this.DNI = correoDocente;
    }
    

    public Trabajador(String codigoTrabajador, String especialidad, String Nombre, String Genero) {
        super(Nombre, Genero);
        this.codigoTrabajador = codigoTrabajador;
        this.especialidad = especialidad;
    }
    

    public String getCodigoTrabajador() {
        return codigoTrabajador;
    }

    public void setCodigoTrabajador(String codigoTrabajador) {
        this.codigoTrabajador = codigoTrabajador;
    }

    public String getEspecialidad() {
        return especialidad;
    }

    public void setEspecialidad(String especialidad) {
        this.especialidad = especialidad;
    }

    public String getDNI() {
        return DNI;
    }

    public void setDNI(String DNI) {
        this.DNI = DNI;
    }
    
}
