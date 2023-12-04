import java.util.Scanner;

public class HelloClarice {
    public static void main(String[] args) {
        HelloClarice(); // Chame o método dentro do main
    }
    public static void HelloClarice() {
        //   2 -  Hello Clarice
        //   Escreva um programa em Java em que o usuário informe o seu nome e exiba a mensagem "Olá, [NomeDoUsuario]".
        Scanner entrada = new Scanner(System.in);

        System.out.println("Digite seu nome: ");

        String nome = entrada.nextLine();

        System.out.println("Olá, " + nome);
    }
}
