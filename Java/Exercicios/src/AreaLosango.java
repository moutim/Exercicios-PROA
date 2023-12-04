import java.util.Scanner;

public class AreaLosango {
    public static void main(String[] args) {
        AreaLosango(); // Chame o método dentro do main
    }

    public static void AreaLosango() {
        Scanner entrada = new Scanner(System.in);

        System.out.println("Digite a diagonal menor e maior para saber a area do losango: ");

        System.out.println("Digite a diagonal maior: ");
        int diagonalMaior = entrada.nextInt();

        System.out.println("Digite a diagonal menor: ");
        int diagonalMenor = entrada.nextInt();

        int area = (diagonalMaior * diagonalMenor) / 2;

        System.out.println("Um losango de diagonal maior " + diagonalMaior + " e diagonal menor " + diagonalMenor + ", tem area de: " + area);
    }
}
