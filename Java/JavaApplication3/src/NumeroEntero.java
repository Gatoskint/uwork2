public class NumeroEntero {
    private int numero;

    public NumeroEntero(int numero) {
        this.numero = numero;
    }

    public boolean esPar() {
        return numero % 2 == 0;
    }
}