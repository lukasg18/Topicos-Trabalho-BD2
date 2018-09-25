package insercaodadosaleatorios;

import insercaodados.entidades.medicamentosfundao.comchaveestrangeira.*;
import insercaodados.entidades.medicamentosfundao.semchaveestrangeira.*;
import insercaodados.utils.*;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;

public class InsercaoDadosAleatorios {
    private static final String DIRETORIODADOSSEMFK = "./dataInserts/semFK/";
    private static final String DIRETORIODADOSCOMFK = "./dataInserts/comFK/";
    private static final String DIRETORIOINSERTS = "insertsQueries";
    private static final String ARQFK = "./" + DIRETORIOINSERTS + "/withFK.sql";
    private static final String ARQNOFK = "./" + DIRETORIOINSERTS + "/withoutFK.sql";
    private static final Random GENERATOR = new Random();

    public static void main(String[] args) throws IOException {
        
        // Criando o diretório de inserts e os arquivos de inserts com e sem chaves estrangeiras
        boolean sucess = new File(DIRETORIOINSERTS).mkdir();
        try {
            FileWriter fileWithForeignKey = new FileWriter(ARQFK);
            FileWriter fileWithoutForeignKey = new FileWriter(ARQNOFK);
            PrintWriter gravarArqComFK = new PrintWriter(fileWithForeignKey);
            PrintWriter gravarArqSemFK = new PrintWriter(fileWithoutForeignKey);
            
            insertDadosCategoria(gravarArqSemFK, DIRETORIODADOSSEMFK+"categoria.txt");
            insertDadosEstado(gravarArqSemFK, DIRETORIODADOSSEMFK+"estados.txt");
            insertDadosEstadoMedicamento(gravarArqSemFK, DIRETORIODADOSSEMFK+"estado_medicamento.txt");
            insertDadosEstadoSolicitacao(gravarArqSemFK, DIRETORIODADOSSEMFK+"estado_solicitacao.txt");
            insertDadosLaboratorio(gravarArqSemFK, DIRETORIODADOSSEMFK+"laboratorio_nomes.txt");
            MinMaxValueID idMaxMinSexo = insertDadosSexo(gravarArqSemFK, DIRETORIODADOSSEMFK+"sexo.txt");
            insertDadosTipoControle(gravarArqSemFK, DIRETORIODADOSSEMFK+"tipocontrole.txt");
            insertDadosPessoa(gravarArqComFK, DIRETORIODADOSCOMFK+"pessoas_nomes.txt", idMaxMinSexo);
            
            fileWithForeignKey.close();
            fileWithoutForeignKey.close();
        }
        catch (IOException e) {
            System.err.printf("Error creating the file: %s\n", e.getMessage());
        }

    }
    
    public static void insertDadosCategoria(PrintWriter arqEscrita, String arqLeitura) {
        try {    
            FileReader fileReader = new FileReader(arqLeitura);
            BufferedReader bufferReader = new BufferedReader(fileReader);
            
            CategoriaInsert categoria = new CategoriaInsert();
            String tableName = "categoria";
            
            // Coloca os dados no arquivo .sql
            String linha = bufferReader.readLine();
            int idValue = 1;
            while (linha != null) {
               categoria.idCategoria = idValue++;
               categoria.tipo = linha;
               
               String query = categoria.createInsertQueryPostgreSql(tableName, "idcategoria", "tipo");
               arqEscrita.println(query);
               
               linha = bufferReader.readLine();
            }
            
            fileReader.close();
        }
        catch (FileNotFoundException ex) {
            Logger.getLogger(InsercaoDadosAleatorios.class.getName()).log(Level.SEVERE, null, ex);
        }
        catch (IOException e) {
            System.err.printf("Erro na abertura do arquivo: %s.\n", e.getMessage());
        }
    }
    
    public static void insertDadosEstado(PrintWriter arqEscrita, String arqLeitura) {
        try {    
            FileReader fileReader = new FileReader(arqLeitura);
            BufferedReader bufferReader = new BufferedReader(fileReader);
            
            EstadoInsert estado = new EstadoInsert();
            String tableName = "estado";
            
            // Coloca os dados no arquivo .sql
            String linha = bufferReader.readLine();
            int idValue = 1;
            while (linha != null) {
               estado.idEstado = idValue++;
               estado.nome = linha;
               
               String query = estado.createInsertQueryPostgreSql(tableName, "idestado", "nome");
               arqEscrita.println(query);
               
               linha = bufferReader.readLine();
            }
            
            fileReader.close();
        }
        catch (FileNotFoundException ex) {
            Logger.getLogger(InsercaoDadosAleatorios.class.getName()).log(Level.SEVERE, null, ex);
        }
        catch (IOException e) {
            System.err.printf("Erro na abertura do arquivo: %s.\n", e.getMessage());
        }
    }
    
    public static void insertDadosEstadoMedicamento(PrintWriter arqEscrita, String arqLeitura) {
        try {    
            FileReader fileReader = new FileReader(arqLeitura);
            BufferedReader bufferReader = new BufferedReader(fileReader);
            
            EstadoMedicamentoInsert estadoMedicamento = new EstadoMedicamentoInsert();
            String tableName = "estado_medicamento";
            
            // Coloca os dados no arquivo .sql
            String linha = bufferReader.readLine();
            int idValue = 1;
            while (linha != null) {
               estadoMedicamento.idEstadoMedicamento = idValue++;
               estadoMedicamento.tipo = linha;
               
               estadoMedicamento.createInsertQueryPostgreSql(tableName, "idestadomedicamento", "tipo");
               arqEscrita.println(estadoMedicamento.getSqlInsert());
               
               linha = bufferReader.readLine();
            }
            
            fileReader.close();
        }
        catch (FileNotFoundException ex) {
            Logger.getLogger(InsercaoDadosAleatorios.class.getName()).log(Level.SEVERE, null, ex);
        }
        catch (IOException e) {
            System.err.printf("Erro na abertura do arquivo: %s.\n", e.getMessage());
        }
    }
    
    public static void insertDadosEstadoSolicitacao(PrintWriter arqEscrita, String arqLeitura) {
        try {    
            FileReader fileReader = new FileReader(arqLeitura);
            BufferedReader bufferReader = new BufferedReader(fileReader);
            
            EstadoSolicitacaoInsert estadoSolicitacao = new EstadoSolicitacaoInsert();
            String tableName = "estado_solicitacao";
            
            // Coloca os dados no arquivo .sql
            String linha = bufferReader.readLine();
            int idValue = 1;
            while (linha != null) {
               estadoSolicitacao.idEstadoSolicitacao = idValue++;
               estadoSolicitacao.tipo = linha;
               
               estadoSolicitacao.createInsertQueryPostgreSql(tableName, "idestadosolicitacao", "tipo");
               arqEscrita.println(estadoSolicitacao.getSqlInsert());
               
               linha = bufferReader.readLine();
            }
            
            fileReader.close();
        }
        catch (FileNotFoundException ex) {
            Logger.getLogger(InsercaoDadosAleatorios.class.getName()).log(Level.SEVERE, null, ex);
        }
        catch (IOException e) {
            System.err.printf("Erro na abertura do arquivo: %s.\n", e.getMessage());
        }
    }
    
    public static void insertDadosLaboratorio(PrintWriter arqEscrita, String arqLeitura) {
        try {    
            FileReader fileReader = new FileReader(arqLeitura);
            BufferedReader bufferReader = new BufferedReader(fileReader);
            
            LaboratorioInsert laboratorio = new LaboratorioInsert();
            String tableName = "laboratorio";
            
            // Coloca os dados no arquivo .sql
            String linha = bufferReader.readLine();
            int idValue = 1;
            while (linha != null) {
               laboratorio.idLaboratorio = idValue++;
               laboratorio.nome = linha;
               
               laboratorio.createInsertQueryPostgreSql(tableName, "idlaboratorio", "nome");
               arqEscrita.println(laboratorio.getSqlInsert());
               
               linha = bufferReader.readLine();
            }
            
            fileReader.close();
        }
        catch (FileNotFoundException ex) {
            Logger.getLogger(InsercaoDadosAleatorios.class.getName()).log(Level.SEVERE, null, ex);
        }
        catch (IOException e) {
            System.err.printf("Erro na abertura do arquivo: %s.\n", e.getMessage());
        }
    }
    
    public static MinMaxValueID insertDadosSexo(PrintWriter arqEscrita, String arqLeitura) {
        
        MinMaxValueID idMaxMinSexo = null;
        try {    
            FileReader fileReader = new FileReader(arqLeitura);
            BufferedReader bufferReader = new BufferedReader(fileReader);
            
            SexoInsert sexo = new SexoInsert();
            String tableName = "sexo";
            
            // Coloca os dados no arquivo .sql
            
            int idValue = 1;
            idMaxMinSexo = new MinMaxValueID();
            idMaxMinSexo.idMinValue = idValue; // Recebe o menor valor do id
            
            String linha = bufferReader.readLine();
            while (linha != null) {
               sexo.idSexo = idValue++;
               sexo.tipo = linha;
               
               sexo.createInsertQueryPostgreSql(tableName, "idsexo", "tipo");
               arqEscrita.println(sexo.getSqlInsert());
               
               linha = bufferReader.readLine();
            }
            
            idMaxMinSexo.idMaxValue = idValue-1; // Recebe o maior valor do id
            fileReader.close();
        }
        catch (FileNotFoundException ex) {
            Logger.getLogger(InsercaoDadosAleatorios.class.getName()).log(Level.SEVERE, null, ex);
        }
        catch (IOException e) {
            System.err.printf("Erro na abertura do arquivo: %s.\n", e.getMessage());
        }
        
        return idMaxMinSexo;
    }
    
    public static void insertDadosTipoControle(PrintWriter arqEscrita, String arqLeitura) {
        try {    
            FileReader fileReader = new FileReader(arqLeitura);
            BufferedReader bufferReader = new BufferedReader(fileReader);
            
            TipoControleInsert tipoControle = new TipoControleInsert();
            String tableName = "tipoControle";
            
            // Coloca os dados no arquivo .sql
            String linha = bufferReader.readLine();
            int idValue = 1;
            while (linha != null) {
               tipoControle.idTipoControle = idValue++;
               tipoControle.nome = linha;
               
               tipoControle.createInsertQueryPostgreSql(tableName, "idtipocontrole", "nome");
               arqEscrita.println(tipoControle.getSqlInsert());
               
               linha = bufferReader.readLine();
            }
            
            fileReader.close();
        }
        catch (FileNotFoundException ex) {
            Logger.getLogger(InsercaoDadosAleatorios.class.getName()).log(Level.SEVERE, null, ex);
        }
        catch (IOException e) {
            System.err.printf("Erro na abertura do arquivo: %s.\n", e.getMessage());
        }
    }
    
    public static void insertDadosPessoa(PrintWriter arqEscrita, String arqLeitura, MinMaxValueID sexoId) {
        try {    
            FileReader fileReader = new FileReader(arqLeitura);
            BufferedReader bufferReader = new BufferedReader(fileReader);
            
            Pessoa pessoa = new Pessoa();
            String tableName = "pessoa";
            int anoCorrente = Calendar.getInstance().get(Calendar.YEAR);
            List<String> cpfLidos = new ArrayList();
            List<Integer> rgLidos = new ArrayList();
            
            int idValue = 1;
            String linha = bufferReader.readLine();
            while (linha != null) {
               pessoa.idPessoa = idValue++;
               pessoa.nome = linha;
               pessoa.dataNascimento = GeradorDataHora.gerarData(anoCorrente-100, anoCorrente);
               
               do {
                   pessoa.cpf = GeradorCpf.geraStrCPF();
                   pessoa.rg = GeradorRg.geraRG();
               } while(cpfLidos.contains(pessoa.cpf) || rgLidos.contains(pessoa.rg));
               
               // Add como um cpf e rg já lido
               cpfLidos.add(pessoa.cpf);
               rgLidos.add(pessoa.rg);
               
               // Pega o id baseado no menor e maior id de sexo
               pessoa.fkIdSexo = sexoId.idMinValue + GENERATOR.nextInt(sexoId.idMaxValue);
               
               pessoa.createInsertQueryPostgreSql(tableName, "id", "nome", 
                      "datanascimento", "cpf", "rg", "idsexo");
               arqEscrita.println(pessoa.getSqlInsert());
               
               linha = bufferReader.readLine();
            }
            
            fileReader.close();
        }
        catch (FileNotFoundException ex) {
            Logger.getLogger(InsercaoDadosAleatorios.class.getName()).log(Level.SEVERE, null, ex);
        }
        catch (IOException e) {
            System.err.printf("Erro na abertura do arquivo: %s.\n", e.getMessage());
        }
    }
}


