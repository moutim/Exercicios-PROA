import java.util.Scanner;

public class AreaTriangulo {
    public static void main(String[] args) {
        AreaTriangulo(); // Chame o método dentro do main
    }

    public static void AreaTriangulo() {
        Scanner entrada = new Scanner(System.in);

        System.out.println("Digite a base e altura para saber a area do triangulo: ");

        System.out.println("Digite a base: ");
        int base = entrada.nextInt();

        System.out.println("Digite a altura: ");
        int altura = entrada.nextInt();

        int area = (base * altura) / 2;

        System.out.println("Um triangulo de base " + base + " e altura " + altura + ", tem area de: " + area);
    }
}
