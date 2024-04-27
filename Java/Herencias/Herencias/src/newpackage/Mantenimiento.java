package newpackage;

import java.util.ArrayList;


public class Mantenimiento {
    private ArrayList<Docente> listaDocente;
    
    public Mantenimiento(){
        listaDocente= new ArrayList<>();
    }
    public void agregarDocente(Docente docente){
        listaDocente.add(docente);
    }
    public ArrayList<Docente> obtenerDocente(){
        return listaDocente;
    }
    public void eliminarDocente(int indice){
        listaDocente.remove(indice);
    }
}
