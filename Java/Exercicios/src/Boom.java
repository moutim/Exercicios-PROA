public class Boom {
    public static void main(String[] args) {
        Boom(); // Chame o método dentro do main
    }

    public static void Boom() {
        //   10 - Parabéns 11 - BOOOOMMM
        //   Crie uma bomba relógio (usando somente código - para deixar claro!) cuja contagem regressiva vá de 30 a 0.
        //   Escreva a contagem em tela e no final da repetição escreva "EXPLOSÃO".

        int i = 30;
        for (i = 30; i >= 0; i--) {
            System.out.println(i);
            if (i == 0) {
                System.out.println("EXPLOSÃO BOOOOOOMMMMMMMMM");
            }
        }
    }
}
