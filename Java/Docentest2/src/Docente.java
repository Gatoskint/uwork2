import java.util.ArrayList;

// Clase abstracta Docente
abstract class Docente {
    protected String nombre;
    protected String codigo;
    protected double sueldoBaseMensual;
    protected String carrera;

    public Docente(String nombre, String codigo, double sueldoBaseMensual, String carrera) {
        this.nombre = nombre;
        this.codigo = codigo;
        this.sueldoBaseMensual = sueldoBaseMensual;
        this.carrera = carrera;
    }

    // Método abstracto para calcular el incentivo por desempeño
    public abstract double calcularIncentivo();

    // Método no abstracto para calcular el salario anual
    public double calcularSalarioAnual() {
        return (sueldoBaseMensual * 12) + calcularIncentivo();
    }

    // Getters y Setters omitidos para brevedad
}

// Clase que representa un docente a tiempo completo
class DocenteTiempoCompleto extends Docente {
    private char calificacionDesempeno;

    public DocenteTiempoCompleto(String nombre, String codigo, double sueldoBaseMensual, String carrera, char calificacionDesempeno) {
        super(nombre, codigo, sueldoBaseMensual, carrera);
        this.calificacionDesempeno = calificacionDesempeno;
    }

    // Implementación del método abstracto para calcular el incentivo
    @Override
    public double calcularIncentivo() {
        // Definiendo los montos de incentivo basados en la calificación
        // A: $2000, B: $1000, C: $500
        switch (calificacionDesempeno) {
            case 'A':
                return 2000;
            case 'B':
                return 1000;
            case 'C':
                return 500;
            default:
                return 0;
        }
    }

    // Getters y Setters omitidos para brevedad
}

// Clase para gestionar a los docentes
class GestorDocentes {
    private ArrayList<DocenteTiempoCompleto> listaDocentes;

    public GestorDocentes() {
        this.listaDocentes = new ArrayList<>();
    }

    // Método para agregar un docente
    public void agregarDocente(DocenteTiempoCompleto docente) {
        listaDocentes.add(docente);
    }

    // Método para eliminar un docente por su código
    public boolean eliminarDocente(String codigo) {
        for (DocenteTiempoCompleto docente : listaDocentes) {
            if (docente.codigo.equals(codigo)) {
                listaDocentes.remove(docente);
                return true;
            }
        }
        return false;
    }

    // Método para obtener la lista de docentes (opcional, por si se necesita)
    public ArrayList<DocenteTiempoCompleto> getListaDocentes() {
        return listaDocentes;
    }
}