import java.util.Scanner;

public class BitOfInformation {
    public static void main(String[] args) {
        BitOfInformation(); // Chame o método dentro do main
    }
    public static void BitOfInformation() {
        //    3 - A Bit of Information
        //    Escreva um programa em Java em que o usuário informe o seu nome e em seguida o programa perguntará a idade do usuário.
        //    Agora o programa deve exibir a mensagem "Olá, [NomeDoUsuario], sua idade é [idade]".
        Scanner entrada = new Scanner(System.in);

        System.out.println("Digite seu nome: ");

        String nome = entrada.nextLine();

        System.out.println("Digite sua idade: ");

        int idade = entrada.nextInt();

        System.out.println("Olá, " + nome + ", sua idade é " + idade);
    }
}
