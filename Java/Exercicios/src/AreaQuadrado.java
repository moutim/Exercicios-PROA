import java.util.Scanner;

public class AreaQuadrado {
    public static void main(String[] args) {
        AreaQuadrado(); // Chame o método dentro do main
    }

    public static void AreaQuadrado() {
        Scanner entrada = new Scanner(System.in);

        System.out.println("Digite o valor de um dos lado do quadrado para saber sua area: ");

        System.out.println("Digite lado: ");
        int lado = entrada.nextInt();

        int area = lado * lado;

        System.out.println("Um quadrado de lado " + lado + ", tem area de: " + area);
    }
}
