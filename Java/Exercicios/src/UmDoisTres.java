import java.util.Scanner;

public class UmDoisTres {
    public static void main(String[] args) {
        UmDoisTres(); // Chame o método dentro do main
    }

    public static void UmDoisTres() {
        //   5 - 1, 2 e 3
        //   Faça um programa que leia um valor informado pelo usuário e diga se o valor informado é positivo, negativo ou neutro.

        Scanner entrada = new Scanner(System.in);

        System.out.println("Digite um numero para saber se ele é positivo, negativo ou neutro: ");

        System.out.println("Digite o numero: ");
        int numero = entrada.nextInt();

        if (numero > 0) {
            System.out.println("Numero positivo: ");
        } else if (numero < 0) {
            System.out.println("Numero negativo: ");
        } else {
            System.out.println("Numero neutro: ");
        }
    }
}
