package universidad;

import java.util.ArrayList;

public class GestionDocentes {
    private ArrayList<DocenteTiempoCompleto> listaDocentes;

    public GestionDocentes() {
        listaDocentes = new ArrayList<>();
    }

    public void agregarDocente(DocenteTiempoCompleto docente) {
        listaDocentes.add(docente);
    }

    public boolean eliminarDocentePorCodigo(String codigoDocente) {
        for (DocenteTiempoCompleto docente : listaDocentes) {
            if (docente.getCodigoDocente().equals(codigoDocente)) {
                listaDocentes.remove(docente);
                return true;
            }
        }
        return false;
    }


    public ArrayList<DocenteTiempoCompleto> getListaDocentes() {
        return listaDocentes;
    }
}