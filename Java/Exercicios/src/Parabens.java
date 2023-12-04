import java.util.Arrays;
import java.util.Scanner;

public class Parabens {
    public static void main(String[] args) {
        Parabens(); // Chame o método dentro do main
    }

    public static void Parabens() {
        //   10 - Parabéns
        //   Escreva um programa para ler as notas das 4 avaliações de um aluno no semestre, calcular e escrever a média do semestre
        //   e a seguinte mensagem: PARABÉNS! Você foi aprovado! somente se o aluno foi aprovado (considere 6.0 a média mínima para aprovação e 4 notas informadas).
        Scanner scanner = new Scanner(System.in);

        int[] numeros = new int[4];

        for (int i = 0; i < 4; i++) {
            System.out.println("Digite o número " + (i + 1) + ": ");
            numeros[i] = scanner.nextInt();
        }

        int soma = Arrays.stream(numeros).sum();

        double media = soma / 4;

        if (media >= 6) {
            System.out.println("PARABÉNS! Você foi aprovado! Sua media é: " + media);
        } else {
            System.out.println("Você foi REPROVADO! Sua media é: " + media);
        }
    }
}
