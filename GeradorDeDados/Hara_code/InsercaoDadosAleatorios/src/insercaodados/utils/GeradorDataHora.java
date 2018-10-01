package insercaodados.utils;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.Random;

public class GeradorDataHora {
    private static final Random GENERATOR = new Random();
    
    // Gera data aleatória sem mudar o horário
    public static Date gerarData(int anoInicio, int anoFim) {
        Calendar calendar = Calendar.getInstance();
        
        int ano = anoInicio + GENERATOR.nextInt(anoFim-anoInicio+1);
        int mes = GENERATOR.nextInt(12);
        int dia = GENERATOR.nextInt(32);
        
        calendar.set(ano, mes, dia);
        Date dataAletoria = calendar.getTime();
        
        return dataAletoria;
    }
    
    // Para testes de geração de datas aleatórias
    public static void main(String[] args) {
        Date data = gerarData(2010, 2020);
        DateFormat f2 = DateFormat.getDateInstance(DateFormat.MEDIUM, new Locale("pt", "BR"));
        System.out.println("Data e hora brasileira: "+f2.format(data));
        
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        String dataHoraFormatadaPostgreSql = sdf.format(new Date()).replace('/', '-');
        
        System.out.println(dataHoraFormatadaPostgreSql);
        
        Calendar dataSemanaPassada = Calendar.getInstance();
        dataSemanaPassada.add(Calendar.DATE, -7);
        SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        String dataHoraFormatadaPostgreSql2 = sdf2.format(dataSemanaPassada.getTime()).replace('/', '-');
        
        System.out.println(dataHoraFormatadaPostgreSql2);
    }
}
