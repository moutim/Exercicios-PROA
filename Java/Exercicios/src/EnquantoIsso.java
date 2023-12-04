import java.util.Scanner;

public class EnquantoIsso {
    public static void main(String[] args) {
        EnquantoIsso(); // Chame o método dentro do main
    }

    public static void EnquantoIsso() {
        //   Faça um programa para ler 2 valores informados pelo usuário e se o segundo valor informado for neutro, deve ser lido um novo valor - ou seja,
        //   para o segundo valor não pode ser aceito o valor zero nem um valor negativo.
        //   O programa deve imprimir o resultado da divisão do primeiro valor lido pelo segundo valor lido.
        Scanner scanner = new Scanner(System.in);

        System.out.println("Digite o primeiro numero: ");
        int numero1 = scanner.nextInt();

        System.out.println("Digite o segundo numero: ");
        int numero2 = scanner.nextInt();

        while (numero2 == 0 || numero2 < 0) {
            System.out.println("O numero nao pode ser neutro ou negativo!");
            numero2 = scanner.nextInt();
        }

        float divisao = numero1 / numero2;

        System.out.println("O resultado da divisao do primeiro numero pelo segundo é: " + divisao);
    }
}
