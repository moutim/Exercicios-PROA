import java.util.Scanner;

public class AreaRetangulo {
    public static void main(String[] args) {
        AreaRetangulo(); // Chame o método dentro do main
    }

    public static void AreaRetangulo() {
        Scanner entrada = new Scanner(System.in);

        System.out.println("Digite a base e altura para saber a area do retângulo: ");

        System.out.println("Digite a base: ");
        int base = entrada.nextInt();

        System.out.println("Digite a altura: ");
        int altura = entrada.nextInt();

        int area = base * altura;

        System.out.println("Um retângulo de base " + base + " e altura " + altura + ", tem area de: " + area);
    }
}
