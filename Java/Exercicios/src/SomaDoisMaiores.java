import java.util.Arrays;
import java.util.Scanner;

public class SomaDoisMaiores {
    public static void main(String[] args) {
        SomaDoisMaiores(); // Chame o método dentro do main
    }

    public static void SomaDoisMaiores() {
        //   7 - Qual o quê?
        //   Faça um programa que leia  3 valores (considere que não serão informados valores iguais) e escrever a soma dos 2 maiores.
        Scanner scanner = new Scanner(System.in);

        int[] numeros = new int[3];

        for (int i = 0; i < 3; i++) {
            System.out.println("Digite o número " + (i + 1) + ": ");
            numeros[i] = scanner.nextInt();
        }

        if (numeros[0] == numeros[1] && numeros[1] == numeros[2]) {
            System.out.println("Nao digite valores iguais!");
        }

        Arrays.sort(numeros);

        int somaDosNumeros = numeros[2] + numeros[1];

        System.out.println("Os dois maiores números são: " + numeros[2] + " e " + numeros[1]);
        System.out.println("A soma dos dois maiores é: " + somaDosNumeros);
    }
}
