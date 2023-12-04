import java.util.Arrays;
import java.util.Scanner;

public class CansarDeDigitar {
    public static void main(String[] args) {
        CansarDeDigitar(); // Chame o método dentro do main
    }

    public static void CansarDeDigitar() {
        //   9 -  Cansar de Digitar
        //   Faça um programa que leia 10 valores informados pelo usuário, calcule, exiba os números informados e escreva a média aritmética desses valores lidos.
        //   Scanner scanner = new Scanner(System.in);
        Scanner scanner = new Scanner(System.in);

        int[] numeros = new int[10];

        for (int i = 0; i < 10; i++) {
            System.out.println("Digite o número " + (i + 1) + ": ");
            numeros[i] = scanner.nextInt();
        }

        int soma = Arrays.stream(numeros).sum();

        double media = soma / 10;

        System.out.println("A media dos valores digitados é: " + media);
    }
}
