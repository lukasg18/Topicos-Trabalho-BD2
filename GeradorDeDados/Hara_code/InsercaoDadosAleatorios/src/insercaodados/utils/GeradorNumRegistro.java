package insercaodados.utils;

import java.util.Random;

public class GeradorNumRegistro {
    private static final Random GENERATOR = new Random();
    
    public static String geraStrNumeroRegistro(int numDigitos) {
        String numRegistro = "";
        
        numRegistro += (1 + GENERATOR.nextInt(9));
        for (int i = 0; i < numDigitos-1; i++) {
            numRegistro += GENERATOR.nextInt(10);
        }
        
        return numRegistro;
    }
    
    public static int geraNumeroRegistro(int numDigitos) {
        return Integer.parseInt(geraStrNumeroRegistro(numDigitos));
    }
    
    public static void main(String[] args) {
        System.out.println(geraNumeroRegistro(6));
    } 
}
