public class NewClass {

    public static boolean esNumero(String cadena) {
        try {
            Double.valueOf(cadena);
            return true;
        } catch (NumberFormatException e) {
            return false;
        }
    }

    public static String calcular(String valor1, String valor2) {
        try {
            double num1 = Double.parseDouble(valor1);
            double num2 = Double.parseDouble(valor2);
            double resultado = num1 + num2;


            return "El resultado de la suma es: " + resultado;
        } catch (NumberFormatException e) {
            return "valores numéricos NO válidos";
        }
    }
}
