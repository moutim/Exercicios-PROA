import java.util.Scanner;

public class QualOMaior4 {
    public static void main(String[] args) {
        QualOmaior4(); // Chame o método dentro do main
    }

    public static void QualOmaior4() {
        //   6 - Qual o maior?
        //   Faça um programa para ler 3 valores (considere que não serão informados valores iguais) e escrever o maior deles.

        Scanner entrada = new Scanner(System.in);

        System.out.println("Digite 3 numeros para saber o maior entre eles: ");

        System.out.println("Digite o primeiro numero: ");
        int numero1 = entrada.nextInt();

        System.out.println("Digite o segundo numero: ");
        int numero2 = entrada.nextInt();

        System.out.println("Digite o terceiro numero: ");
        int numero3 = entrada.nextInt();

        System.out.println("Digite o quarto numero: ");
        int numero4 = entrada.nextInt();

        if (numero1 == numero2 || numero1 == numero3 || numero1 == numero4 || numero2 == numero3 || numero2 == numero4 || numero3 == numero4) {
            System.out.println("Nao digite valores iguais!");
        }

        double maiorValor = Math.max(numero1, Math.max(numero2, Math.max(numero3, numero4)));

        System.out.println("O maior valor dos numeros digitados é: " + maiorValor);
    }
}
