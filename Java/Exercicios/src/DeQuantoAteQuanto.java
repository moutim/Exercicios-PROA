import java.util.Scanner;

public class DeQuantoAteQuanto {
    public static void main(String[] args) {
        DeQuantoAteQuanto(); // Chame o método dentro do main
    }

    public static void DeQuantoAteQuanto() {
        //   13 - De quanto até quanto?
        //   Faça um algoritmo que calcule e escreva a média aritmética dos dois números inteiros informados pelo usuário
        //   e todos os números inteiros entre eles. Considere que o primeiro sempre será menor que o segundo.
        Scanner scanner = new Scanner(System.in);
        int somaNumeros = 0;
        int quantidadeNumeros = 0;

        System.out.println("Digite o primeiro numero: ");
        int numero1 = scanner.nextInt();

        System.out.println("Digite o segundo numero: ");
        int numero2 = scanner.nextInt();

        while (numero2 < numero1) {
            System.out.println("O segundo numero deve ser maior que o primeiro!");
            numero2 = scanner.nextInt();
        }

        for (int i = numero1; i <= numero2; i++) {
            somaNumeros = somaNumeros + i;
            quantidadeNumeros = quantidadeNumeros + 1;
        }

        float media = somaNumeros / quantidadeNumeros;

        System.out.println("A media dos numeros é: " + media);
    }
}
