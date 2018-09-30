package insercaodados.utils;

import java.util.Random;

public class GeradorRg {

    private static final Random RND = new Random();

    public static String geraStrRG() {
        int[] digitos = new int[8];
        for (int i = 0; i < digitos.length; i++) {
            digitos[i] = RND.nextInt(10);
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
                DV = "3"; // Consertar depois
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

        // GAMBIARRA DEPOIS CONSERTA PLS XD
        while (rgGerado.length() < 9) {
            rgGerado += RND.nextInt(10);
        }

        return rgGerado;
    }

    public static int geraRG() {
        String rgGerado = geraStrRG();
        if (rgGerado.charAt(0) == '0') {
            rgGerado = (1 + RND.nextInt(9)) + rgGerado.substring(1) + "";
        }
        
        return Integer.parseInt(rgGerado);
    }

    public static boolean validaRG(String rg) {

        // Supomos que sejam rg's sempre de 9 dígitos
        if (rg.length() != 9) {
            return false;
        }

        int[] digitos = new int[8];
        char charDigit;
        for (int i = 0; i < digitos.length; i++) {
            charDigit = rg.charAt(i);
            if (!Character.isDigit(charDigit)) {
                return false;
            }
            digitos[i] = Integer.parseInt(charDigit + "");
        }

        int DV = Integer.parseInt(rg.charAt(8) + "");
        int soma = 0;
        int multiplicador = 2;
        for (int digito : digitos) {
            soma += (digito * multiplicador++);
        }

        String digitoVerificador = Integer.toString(soma % 11);

        if ("1".equals(digitoVerificador)) {
            digitoVerificador = "X";
        } else if ("0".equals(digitoVerificador)) {
            digitoVerificador = "0";
        } else {
            digitoVerificador = (11 - Integer.parseInt(digitoVerificador)) + "";
        }

        return digitoVerificador.equals(DV);
    }

    // Para testar o gerador de RG's
    public static void main(String[] args) {
        String rg = geraStrRG();
        String ehValido = validaRG(rg) ? "VÁLIDO" : "INVÁLIDO";
        System.out.printf("%s é %s\n", rg, ehValido);
        System.out.println(geraRG());
    }

}
