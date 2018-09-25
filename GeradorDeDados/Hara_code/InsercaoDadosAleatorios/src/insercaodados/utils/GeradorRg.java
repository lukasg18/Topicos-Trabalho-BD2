package insercaodados.utils;

import java.util.Random;

public class GeradorRg {

    public static String geraStrRG() {
        Random rnd = new Random();

        int[] digitos = new int[8];
        for (int i = 0; i < digitos.length; i++) {
            digitos[i] = rnd.nextInt(10);
        }

        int soma = 0;
        int multiplicador = 2;
        for (int digito : digitos) {
            soma += (digito * multiplicador++);
        }

        int resto = soma % 11;
        String DV;

        switch (resto) {
            case 0:
                DV = "0";
                break;
            case 1:
                DV = "3"; // "X" depois mudar aqui
                break;
            default:
                DV = Integer.toString(11 - resto);
                break;
        }

        String rgGerado = "";

        for (int digito : digitos) {
            rgGerado += digito;
        }
        rgGerado += DV;

        return rgGerado;
    }

    public static int geraRG() {
        return Integer.parseInt(geraStrRG());
    }
    
    // TODO fazer o validador de rg
    
    // Para testar o gerador de RG's
    public static void main(String[] args) {
        System.out.println(geraStrRG());
        System.out.println(geraRG());
    }

}
