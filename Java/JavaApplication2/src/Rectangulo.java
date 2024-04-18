public class Rectangulo {
    private double base;
    private double altura;

    public Rectangulo(double base, double altura) {
        this.base = base;
        this.altura = altura;
    }

    public double calcularArea() {
        return base * altura;
    }

    public static void main(String[] args) {
        NewJFrame form = new NewJFrame();
        form.setVisible(true);
    }
}
