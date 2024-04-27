package newpackage;

public class Persona {
    private String Nombre;
    private String Genero;
    private int Edad;

    public Persona(String Nombre, String Genero, int Edad) {
        this.Nombre = Nombre;
        this.Genero = Genero;
        this.Edad = Edad;
    }

    public Persona(String Nombre, String Genero) {
        this.Nombre = Nombre;
        this.Genero = Genero;
    }
    
    
    
    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getApellido() {
        return Genero;
    }

    public void setGenero(String Genero) {
        this.Genero = Genero;
    }

    public int getEdad() {
        return Edad;
    }

    public void setEdad(int Edad) {
        this.Edad = Edad;
    }
    
    
    
}
