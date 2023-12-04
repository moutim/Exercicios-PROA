import java.util.Scanner;

public class AreaCirculo {
    public static void main(String[] args) {
        AreaCirculo(); // Chame o método dentro do main
    }

    public static void AreaCirculo() {
        Scanner entrada = new Scanner(System.in);

        System.out.println("Digite o raio para saber a area do circulo: ");

        System.out.println("Digite o raio: ");
        int raio = entrada.nextInt();

        double area = Math.PI * (raio * raio);

        System.out.println("Um circulo de raio " + raio + ", tem area de: " + area);
    }
}
