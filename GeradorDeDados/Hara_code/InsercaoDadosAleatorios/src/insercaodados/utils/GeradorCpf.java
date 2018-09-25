package insercaodados.utils;

import javax.xml.bind.ParseConversionEvent;

public class GeradorCpf {
    
    private static String calcDigVerif(String num) {  
        Integer primDig, segDig;  
        int soma = 0, peso = 10;  
        for (int i = 0; i < num.length(); i++)  
                soma += Integer.parseInt(num.substring(i, i + 1)) * peso--;  
        if (soma % 11 == 0 | soma % 11 == 1)  
            primDig = new Integer(0);  
        else  
            primDig = new Integer(11 - (soma % 11));  
        soma = 0;  
        peso = 11;  
        for (int i = 0; i < num.length(); i++)  
                soma += Integer.parseInt(num.substring(i, i + 1)) * peso--;  
        soma += primDig.intValue() * 2;  
        if (soma % 11 == 0 | soma % 11 == 1)  
            segDig = new Integer(0);  
        else  
            segDig = new Integer(11 - (soma % 11));
        
        return primDig.toString() + segDig.toString();  
    }  
    
    public static boolean validaCPF(String cpf) {  
        if (cpf.length() != 11)  
            return false;  
        String numDig = cpf.substring(0, 9);  
        
        return calcDigVerif(numDig).equals(cpf.substring(9, 11));  
    }
    
    public static String geraStrCPF() {  
        String iniciais = "";  
        Integer numero; 
        String cpfGerado = "";
        
        do {
            for (int i = 0; i < 9; i++) {  
                numero = new Integer((int) (Math.random() * 10));  
                iniciais += numero.toString(); 
            }
            cpfGerado = iniciais + calcDigVerif(iniciais);
            
        } while (!validaCPF(cpfGerado));
        
        return cpfGerado;
    }
    
    public static int geraCPF() {
        return Integer.parseInt(geraStrCPF());
    }
    
    // Para testes do gerador de CPF válidos
    public static void main (String args[]){
        String cpf = geraStrCPF();
    	System.out.println(cpf);
    	System.out.println(validaCPF(cpf));
    }
}


