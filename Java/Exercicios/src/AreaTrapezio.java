import java.util.Scanner;

public class AreaTrapezio {
    public static void main(String[] args) {
        AreaTrapezio(); // Chame o método dentro do main
    }

    public static void AreaTrapezio() {
        Scanner entrada = new Scanner(System.in);

        System.out.println("Digite a base maior, base menor e altura para saber a area do trapézio: ");

        System.out.println("Digite a base maior: ");
        int baseMaior = entrada.nextInt();

        System.out.println("Digite a base menor: ");
        int baseMenor = entrada.nextInt();

        System.out.println("Digite a altura: ");
        int altura = entrada.nextInt();

        int area = ((baseMaior + baseMenor) * altura) / 2;

        System.out.println("Um trapezio de base maior " + baseMaior + " e base menor " + baseMenor + ", tem area de: " + area);
    }
}
