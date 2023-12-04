import java.util.Scanner;

public class AreaParalolograma {
    public static void main(String[] args) {
        AreaParalelograma(); // Chame o método dentro do main
    }

    public static void AreaParalelograma() {
        Scanner entrada = new Scanner(System.in);

        System.out.println("Digite a base e altura para saber a area do paralelograma: ");

        System.out.println("Digite a base: ");
        int base = entrada.nextInt();

        System.out.println("Digite a altura: ");
        int altura = entrada.nextInt();

        int area = base * altura;

        System.out.println("Um paralelograma de base " + base + " e altura " + altura + ", tem area de: " + area);
    }
}
