package Packete1;

public class EmpleadoBotica {
    private String nombres;
    private String DNI;
    private String cargo;
    private String area;
    private int añosAntiguedad;

    public EmpleadoBotica(String nombres, String DNI, String cargo, String area, int añosAntiguedad) {
        this.nombres = nombres;
        this.DNI = DNI;
        this.cargo = cargo;
        this.area = area;
        this.añosAntiguedad = añosAntiguedad;
    }
    public String getNombres() {
        return nombres;
    }
    public void setNombres(String nombres) {
        this.nombres = nombres;
    }
    public String getDNI() {
        return DNI;
    }
    public void setDNI(String DNI) {
        this.DNI = DNI;
    }
    public String getCargo() {
        return cargo;
    }
    public void setCargo(String cargo) {
        this.cargo = cargo;
    }
    public String getArea() {
        return area;
    }
    public void setArea(String area) {
        this.area = area;
    }
    public int getAñosAntiguedad() {
        return añosAntiguedad;
    }
    public void setAñosAntiguedad(int añosAntiguedad) {
        this.añosAntiguedad = añosAntiguedad;
    }  
     public double calcularSueldoBruto() {
    double sueldoBase = 0;
    double bonificacion = 789;     
        switch (cargo) {
            case "Farmacéutico" -> sueldoBase = 3500;
            case "Auxiliar" -> sueldoBase = 2100;
            default ->
                System.out.println("Cargo desconocido: " + cargo);
        }
    double sueldoBruto = sueldoBase + bonificacion;
    return sueldoBruto;
    }
    public double calcularDescuentos() {
        double sueldoBase = calcularSueldoBruto();
        double descuentos;  
        if (sueldoBase <= 2500) {
            descuentos = sueldoBase * 0.12; 
        } else {
            descuentos = sueldoBase * 0.15; 
        }
        return descuentos;
    }
    public double calcularMovilidad() {
    double movilidad = 0;
        switch (cargo) {
            case "Farmacéutico" -> movilidad = 500;
            case "Auxiliar" -> movilidad = 300;
            default -> 
                System.out.println("Cargo desconocido: " + cargo);
        }
    return movilidad;
}
    public double calcularGratificacion() {
        double sueldoBruto = calcularSueldoBruto();
        double gratificacion = sueldoBruto * 0.10; 
        return gratificacion;
    } 
    public double calcularSueldoNeto() {
        double sueldoBruto = calcularSueldoBruto();
        double descuentos = calcularDescuentos();
        double movilidad = calcularMovilidad();
        double gratificacion = calcularGratificacion();
        double sueldoNeto;
        sueldoNeto = sueldoBruto - descuentos + movilidad + gratificacion;
        return sueldoNeto;
    }
}
