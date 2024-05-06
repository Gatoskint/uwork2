package newpackage;

import java.util.ArrayList;


public class Mantenimiento {
    private ArrayList<Trabajador> listaTrabajador;
    
    public Mantenimiento(){
        listaTrabajador= new ArrayList<>();
    }
    public void agregarTrabajador(Trabajador trabajador){
        listaTrabajador.add(trabajador);
    }
    public ArrayList<Trabajador> obtenerTrabajador(){
        return listaTrabajador;
    }
    public void eliminarTrabajador(int indice){
        listaTrabajador.remove(indice);
    }
}
