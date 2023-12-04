public class BrincadeiraSobreAlturas {
    public static void main(String[] args) {
        BrincadeiraSobreAlturas(); // Chame o método dentro do main
    }

    public static void BrincadeiraSobreAlturas() {
        //   15 - Uma Brincadeira Sobre Alturas
        //   Anacleto tem 1,50 metro e cresce 2 centímetros por ano, enquanto
        //   Felisberto tem 1,1O metro e cresce 3 centímetros por ano. Construa um algoritmo que calcule e
        //   imprima quantos anos serão necessários para que Felisberto seja maior que Anacleto.
        double alturaAnacletoInicial = 1.50;
        double alturaFelisbertoInicial = 1.10;
        double crescimentoAnacleto = 0.02;
        double crescimentoFelisberto = 0.03;

        int anos = 0;
        double alturaAnacleto = alturaAnacletoInicial;
        double alturaFelisberto = alturaFelisbertoInicial;

        while (alturaFelisberto <= alturaAnacleto) {
            alturaAnacleto += crescimentoAnacleto;
            alturaFelisberto += crescimentoFelisberto;
            anos++;
        }

        System.out.println("Serão necessários " + anos + " anos para Felisberto ultrapassar Anacleto.");
        System.out.println("Altura de Anacleto: " + alturaAnacleto + " metros");
        System.out.println("Altura de Felisberto: " + alturaFelisberto + " metros");
    }
}
