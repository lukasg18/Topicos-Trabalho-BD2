package insercaodados.utils;

import java.util.Random;

public class GeradorSus {
    private static final Random GENERATOR = new Random();
    
    public static String geraStrNumeroSus() {
        String numSus = "";
        
        numSus += (1 + GENERATOR.nextInt(9));
        for (int i = 0; i < 15; i++) {
            numSus += GENERATOR.nextInt(10);
        }
        
        return numSus;
    }
    
    public static long geraNumeroSus() {
        return Integer.parseInt(geraStrNumeroSus());
    }
    
    public static void main(String[] args) {
        System.out.println(geraStrNumeroSus());
    } 
}
