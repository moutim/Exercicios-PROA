import java.util.Scanner;

public class PassouNoTeste {
    public static void main(String[] args) {
        PassouNoTeste(); // Chame o método dentro do main
    }

    public static void PassouNoTeste() {
        //   14 - Passou no Teste?
        //   Escreva um programa para ler 6 notas de um aluno, calcular e imprimir a média final.
        //   Considere que a nota de aprovação é 6,5. Logo após escrever a mensagem "Calcular a média de outro aluno Sim/Não?" e solicitar um resposta.
        //   Se a resposta for "S", o programa deve ser executado novamente, caso contrário deve ser encerrado exibindo a quantidade de alunos aprovados.
        Scanner scanner = new Scanner(System.in);
        int somaNotas = 0;
        int totalAprovados = 0;

        for (int i = 1; i <= 6; i++) {
            System.out.println("Digite a nota " + i + ": ");
            int nota = scanner.nextInt();

            somaNotas = somaNotas + nota;
        }

        float media = somaNotas / 6;

        if (media >= 6.5) {
            System.out.println("Você foi APROVADO! Sua media é: " + media);
            totalAprovados = totalAprovados + 1;
        }

        scanner.nextLine();
        System.out.println("Deseja calcular a media de outro aluno? Escreva S ou N");
        String opcao = scanner.nextLine();

        if (opcao.equalsIgnoreCase("S")) {
            PassouNoTeste();
        } else {
            System.out.println("O total de alunos aprovado é: " + totalAprovados);
        }
    }
}
