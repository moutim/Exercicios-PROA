import java.util.Arrays;
import java.util.Scanner;

public class SomaDoisMaiores5 {
    public static void main(String[] args) {
        SomaDoisMaiores5(); // Chame o método dentro do main
    }

    public static void SomaDoisMaiores5() {
        //    7.1 - 5 vezes?
        //    Faça um programa que leia 5  valores (considere que não serão informados valores iguais) e escrever a soma dos 2 maiores.
        Scanner scanner = new Scanner(System.in);

        int[] numeros = new int[5];

        for (int i = 0; i < 5; i++) {
            System.out.println("Digite o número " + (i + 1) + ": ");
            numeros[i] = scanner.nextInt();
        }

        if (numeros[0] == numeros[1] || numeros[0] == numeros[2] || numeros[0] == numeros[3] || numeros[0] == numeros[4] ||
                numeros[1] == numeros[2] || numeros[1] == numeros[3] || numeros[1] == numeros[4] ||
                numeros[2] == numeros[3] || numeros[2] == numeros[4] ||
                numeros[3] == numeros[4]) {
            System.out.println("Nao digite valores iguais!");
        }

        Arrays.sort(numeros);

        int somaDosNumeros = numeros[4] + numeros[3];

        System.out.println("Os dois maiores números são: " + numeros[4] + " e " + numeros[3]);
        System.out.println("A soma dos dois maiores é: " + somaDosNumeros);
    }
}
