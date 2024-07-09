package universidad;

public class Docente {
    protected String nombre;
    protected String codigoDocente;
    protected double sueldoBaseMensual;
    protected String carrera;

    public Docente(String nombre, String codigoDocente, double sueldoBaseMensual, String carrera) {
        this.nombre = nombre;
        this.codigoDocente = codigoDocente;
        this.sueldoBaseMensual = sueldoBaseMensual;
        this.carrera = carrera;
    }


    public double calcularSalarioAnual() {
        return sueldoBaseMensual * 12;
    }


    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getCodigoDocente() {
        return codigoDocente;
    }

    public void setCodigoDocente(String codigoDocente) {
        this.codigoDocente = codigoDocente;
    }

    public double getSueldoBaseMensual() {
        return sueldoBaseMensual;
    }

    public void setSueldoBaseMensual(double sueldoBaseMensual) {
        this.sueldoBaseMensual = sueldoBaseMensual;
    }

    public String getCarrera() {
        return carrera;
    }

    public void setCarrera(String carrera) {
        this.carrera = carrera;
    }
}