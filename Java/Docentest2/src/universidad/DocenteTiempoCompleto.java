package universidad;

public class DocenteTiempoCompleto extends Docente {
    private char calificacionDesempeno;

    public DocenteTiempoCompleto(String nombre, String codigoDocente, double sueldoBaseMensual, String carrera, char calificacionDesempeno) {
        super(nombre, codigoDocente, sueldoBaseMensual, carrera);
        this.calificacionDesempeno = calificacionDesempeno;
    }
    @Override
    public double calcularIncentivo() {
        double incentivo;
        switch (calificacionDesempeno) {
            case 'S':
                incentivo = 2000; // Incentivo para calificación A
                break;
            case 'B':
                incentivo = 1500; // Incentivo para calificación B
                break;
            case 'C':
                incentivo = 1000; // Incentivo para calificación C
                break;
            default:
                incentivo = 0; // Sin incentivo para otras calificaciones
                break;
        }
        return incentivo;
    }

    public char getCalificacionDesempeno() {
        return calificacionDesempeno;
    }

    public void setCalificacionDesempeno(char calificacionDesempeno) {
        this.calificacionDesempeno = calificacionDesempeno;
    }
}