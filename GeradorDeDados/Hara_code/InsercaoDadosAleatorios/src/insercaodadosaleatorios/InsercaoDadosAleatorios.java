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
import java.util.Date;
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
    private static final String[] NOMEARQUIVOSLEITURA = {
        DIRETORIODADOSSEMFK+"categoria.txt",
        DIRETORIODADOSSEMFK+"estados.txt",
        DIRETORIODADOSSEMFK+"estado_medicamento.txt",
        DIRETORIODADOSSEMFK+"estado_solicitacao.txt",
        DIRETORIODADOSSEMFK+"laboratorio_nomes.txt",
        DIRETORIODADOSSEMFK+"sexo.txt",
        DIRETORIODADOSSEMFK+"tipocontrole.txt",
        DIRETORIODADOSCOMFK+"pessoas_nomes.txt",
        DIRETORIODADOSCOMFK+"municipios.txt",
        DIRETORIODADOSCOMFK+"bairros.txt",
        DIRETORIODADOSCOMFK+"postos.txt",
        DIRETORIODADOSSEMFK+"nome_medicamentos.txt"
    };
    
    private static MinMaxValueID idMaxMinSexo;
    private static MinMaxValueID idMaxMinEstado;
    private static MinMaxValueID idMaxMinMunicipio;
    private static MinMaxValueID idMaxMinBairro;
    private static MinMaxValueID idMaxMinPessoa;
    private static MinMaxValueID idMaxMinPessoaTitular;
    private static MinMaxValueID idMaxMinPessoaDependente;
    private static MinMaxValueID idMaxMinPosto;
    private static MinMaxValueID idMaxMinPessoaAtentende;
    private static MinMaxValueID idMaxMinMedicamento;
    private static MinMaxValueID idMaxMinCategoria;
    private static MinMaxValueID idMaxMinLaboratorio;
    private static MinMaxValueID idMaxMinMedicamentoPosto;
    private static MinMaxValueID idMaxMinSolicitacaoComunicado;
    private static MinMaxValueID idMaxMinSolicitacaoExpirado;
    private static MinMaxValueID idMaxMinSolicitacaoMedicamentoPosto;

    public static void main(String[] args) throws IOException {
        
        // Criando o diretório de inserts e os arquivos de inserts com e sem chaves estrangeiras
        boolean sucess = new File(DIRETORIOINSERTS).mkdir();
        try {
            FileWriter fileWithForeignKey = new FileWriter(ARQFK);
            FileWriter fileWithoutForeignKey = new FileWriter(ARQNOFK);
            PrintWriter gravarArqComFK = new PrintWriter(fileWithForeignKey);
            PrintWriter gravarArqSemFK = new PrintWriter(fileWithoutForeignKey);
            
            //insertDadosCategoria(gravarArqSemFK, NOMEARQUIVOSLEITURA[0]);
            insertDadosEstado(gravarArqSemFK, NOMEARQUIVOSLEITURA[1]);
            //insertDadosEstadoMedicamento(gravarArqSemFK, NOMEARQUIVOSLEITURA[2]);
            //insertDadosEstadoSolicitacao(gravarArqSemFK, NOMEARQUIVOSLEITURA[3]);
            insertDadosLaboratorio(gravarArqSemFK, NOMEARQUIVOSLEITURA[4]);
            //insertDadosSexo(gravarArqSemFK, NOMEARQUIVOSLEITURA[5]);
            //insertDadosTipoControle(gravarArqSemFK, NOMEARQUIVOSLEITURA[6]);
            insertDadosPessoa(gravarArqComFK, NOMEARQUIVOSLEITURA[7]);
            
            String[] leituraBuffer = {NOMEARQUIVOSLEITURA[8], NOMEARQUIVOSLEITURA[9]};
            insertMunicipioBairro(gravarArqComFK, leituraBuffer);
            insertPessoaTitular(gravarArqComFK);
            insertPessoaDependente(gravarArqComFK);
            insertPosto(gravarArqComFK, NOMEARQUIVOSLEITURA[10]);
            insertAtendente(gravarArqComFK);
            insertMedicamento(gravarArqSemFK, NOMEARQUIVOSLEITURA[11]);
            //insertMedicamentoCategoria(gravarArqComFK);
            insertMedicamentoLaboratorio(gravarArqComFK);
            insertMedicamentoPosto(gravarArqComFK);
            insertSolicitacaoComunicado(gravarArqComFK);
            insertSolicitacaoExpirado(gravarArqComFK);
            insertSolicitacaoMedicamentoPosto(gravarArqComFK);
            
            fileWithForeignKey.close();
            fileWithoutForeignKey.close();
        }
        catch (IOException e) {
            System.err.printf("Error creating the file: %s\n", e.getMessage());
        }

    }
    
    public static BufferedReader abrirBufferReader(String nomeArqLeitura) throws IOException {
        BufferedReader bufferReader = null;
        try {    
            FileReader fileReader = new FileReader(nomeArqLeitura);
            bufferReader = new BufferedReader(fileReader);
        }
        catch (FileNotFoundException ex) {
            Logger.getLogger(InsercaoDadosAleatorios.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return bufferReader;
    }
    
    public static void insertDadosCategoria(PrintWriter arqEscrita, String arqLeitura) {
        try {    
            FileReader fileReader = new FileReader(arqLeitura);
            BufferedReader bufferReader = new BufferedReader(fileReader);
            
            CategoriaInsert categoria = new CategoriaInsert();
            String tableName = "categoria";
            
            int idValue = 1;
            idMaxMinCategoria = new MinMaxValueID();
            idMaxMinCategoria.idMinValue = idValue;
            
            // Coloca os dados no arquivo .sql
            String linha = bufferReader.readLine();
            while (linha != null) {
               categoria.idCategoria = idValue++;
               categoria.tipo = linha;
               
               String query = categoria.createInsertQueryPostgreSql(tableName, "idcategoria", "tipo");
               arqEscrita.println(query);
               
               linha = bufferReader.readLine();
            }
            idMaxMinCategoria.idMaxValue = idValue-1;
            
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
            
            int idValue = 1;
            idMaxMinEstado = new MinMaxValueID();
            idMaxMinEstado.idMinValue = idValue;
            
            // Coloca os dados no arquivo .sql
            String linha = bufferReader.readLine();
            while (linha != null) {
               estado.idEstado = idValue++;
               estado.nome = linha;
               
               String query = estado.createInsertQueryPostgreSql(tableName, "idestado", "nome");
               arqEscrita.println(query);
               
               linha = bufferReader.readLine();
            }
            idMaxMinEstado.idMaxValue = idValue-1;
            
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
            String tableName = "estadosolicitacao";
            
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
            
            int idValue = 1;
            idMaxMinLaboratorio = new MinMaxValueID();
            idMaxMinLaboratorio.idMinValue = idValue;
            
            // Coloca os dados no arquivo .sql
            String linha = bufferReader.readLine();
            while (linha != null) {
               laboratorio.idLaboratorio = idValue++;
               laboratorio.nome = linha;
               
               laboratorio.createInsertQueryPostgreSql(tableName, "idlaboratorio", "nome");
               arqEscrita.println(laboratorio.getSqlInsert());
               
               linha = bufferReader.readLine();
            }
            idMaxMinLaboratorio.idMaxValue = idValue-1;
            
            fileReader.close();
        }
        catch (FileNotFoundException ex) {
            Logger.getLogger(InsercaoDadosAleatorios.class.getName()).log(Level.SEVERE, null, ex);
        }
        catch (IOException e) {
            System.err.printf("Erro na abertura do arquivo: %s.\n", e.getMessage());
        }
    }
    
    public static void insertDadosSexo(PrintWriter arqEscrita, String arqLeitura) {
        
        idMaxMinSexo = null;
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
    }
    
    public static void insertDadosTipoControle(PrintWriter arqEscrita, String arqLeitura) {
        try {    
            FileReader fileReader = new FileReader(arqLeitura);
            BufferedReader bufferReader = new BufferedReader(fileReader);
            
            TipoControleInsert tipoControle = new TipoControleInsert();
            String tableName = "tipo_controle";
            
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
    
    // Usa o idsexo para chave estrangeira
    public static void insertDadosPessoa(PrintWriter arqEscrita, String arqLeitura) {
        try {    
            FileReader fileReader = new FileReader(arqLeitura);
            BufferedReader bufferReader = new BufferedReader(fileReader);
            
            PessoaInsert pessoa = new PessoaInsert();
            String tableName = "pessoa";
            
            // Definição de sexo
            final int MASCULINO = 0;
            final int FEMININO = 1;
            
            int anoCorrente = Calendar.getInstance().get(Calendar.YEAR);
            List<String> cpfLidos = new ArrayList();
            List<String> rgLidos = new ArrayList();
            
            int idValue = 1;
            idMaxMinPessoa = new MinMaxValueID();
            idMaxMinPessoa.idMinValue = idValue;
            
            String linha = bufferReader.readLine();
            while (linha != null) {
               pessoa.idPessoa = idValue++;
               pessoa.nome = linha;
               pessoa.dataNascimento = GeradorDataHora.gerarData(anoCorrente-100, anoCorrente);
               
               do {
                   pessoa.cpf = GeradorCpf.geraStrCPF();
                   pessoa.rg = GeradorRg.geraStrRG();
               } while(cpfLidos.contains(pessoa.cpf) || rgLidos.contains(pessoa.rg));
               
               // Add como um cpf e rg já lido
               cpfLidos.add(pessoa.cpf);
               rgLidos.add(pessoa.rg);
               
               // Pega o id baseado no menor e maior id de sexo
               pessoa.sexoEnum = MASCULINO + GENERATOR.nextInt(FEMININO+1);
               
               pessoa.createInsertQueryPostgreSql(tableName, "idpessoa", "nome", 
                      "datanascimento", "cpf", "rg", "sexo");
               arqEscrita.println(pessoa.getSqlInsert());
               
               linha = bufferReader.readLine();
            }
            idMaxMinPessoa.idMaxValue = idValue-1;
            
            fileReader.close();
        }
        catch (FileNotFoundException ex) {
            Logger.getLogger(InsercaoDadosAleatorios.class.getName()).log(Level.SEVERE, null, ex);
        }
        catch (IOException e) {
            System.err.printf("Erro na abertura do arquivo: %s.\n", e.getMessage());
        }
    }
    
    // Usa o idestado e idmunicipio
    public static void insertMunicipioBairro(PrintWriter arqEscrita, String[] nomesArqLeitura) throws IOException {
        BufferedReader bufReaderMunicipio = abrirBufferReader(nomesArqLeitura[0]);
        BufferedReader bufReaderBairro = abrirBufferReader(nomesArqLeitura[1]);
        
        MunicipioInsert municipio = new MunicipioInsert();
        BairroInsert bairro = new BairroInsert();
        
        String tableNameMunicipio = "municipio";
        int idValue = 1;
        idMaxMinMunicipio = new MinMaxValueID();
        idMaxMinMunicipio.idMinValue = idValue;
        
        String linhaM = bufReaderMunicipio.readLine();
        // Por enquanto só é ES para facilitar até
        while (linhaM != null) {
            municipio.idMunicipio = idValue++;
            municipio.nome = linhaM;
            municipio.fkIdEstado = 8; // por enquanto só id 8 é o ES
            
            municipio.createInsertQueryPostgreSql(tableNameMunicipio, "idmunicipio",
            "nome", "idestado");
            arqEscrita.println(municipio.getSqlInsert());
            
            linhaM = bufReaderMunicipio.readLine();
        }
        
        idMaxMinMunicipio.idMaxValue = idValue-1;
        
        String tableNameBairro = "bairro";
        idValue = 1;
        idMaxMinBairro = new MinMaxValueID();
        idMaxMinBairro.idMinValue = idValue;
        
        String linhaB = bufReaderBairro.readLine();
        // Por enquanto só é ES para facilitar até
        while (linhaB != null) {
            bairro.idBairro = idValue++;
            bairro.nome = linhaB;
            bairro.fkIdMunicipio = 1; // Por enquanto tudo está na Serra logo é 1
            
            bairro.createInsertQueryPostgreSql(tableNameBairro, "idbairro",
            "nome", "idmunicipio");
            arqEscrita.println(bairro.getSqlInsert());
            
            linhaB = bufReaderBairro.readLine();
        }
        
        idMaxMinBairro.idMaxValue = idValue-1;
    }
    
    // Usa o idpessoa
    public static void insertPessoaTitular(PrintWriter arqEscrita) throws FileNotFoundException, IOException {
           
        PessoaTitularInsert titular = new PessoaTitularInsert();
        String tableName = "titular";

        int idValue = 1;
        idMaxMinPessoaTitular = new MinMaxValueID();
        idMaxMinPessoaTitular.idMinValue = idMaxMinPessoa.idMinValue; // Recebe o menor valor do id
        idMaxMinPessoaTitular.idMaxValue = 1000; // Primeiras 4K pessoas serão titulares
        
        for (int i = 0; i < idMaxMinPessoaTitular.idMaxValue; i++) {
           titular.fkIdPessoa = idValue++;
           titular.numeroSus = GeradorSus.geraStrNumeroSus();

           titular.createInsertQueryPostgreSql(tableName, "numerosus", "idpessoa");
           arqEscrita.println(titular.getSqlInsert());
        }
    }
    
    // Usa o idPessoa e idTitular
    public static void insertPessoaDependente(PrintWriter arqEscrita) {
        PessoaDependenteInsert dependente = new PessoaDependenteInsert();
        String tableName = "dependente";

        int idValue = idMaxMinPessoaTitular.idMaxValue + 1; // Pega o próximo
        idMaxMinPessoaDependente = new MinMaxValueID();
        idMaxMinPessoaDependente.idMinValue = idValue; // Recebe o menor valor do id
        idMaxMinPessoaDependente.idMaxValue = idValue + 79; // Primeiras 4K pessoas serão titulares
        
        int titularAssociados = idMaxMinPessoaTitular.idMinValue;
        
        for (int i = idValue; i <= idMaxMinPessoaDependente.idMaxValue; i++) {
           dependente.fkIdPessoa = idValue++;
           dependente.fkIdTitular = titularAssociados++;

           dependente.createInsertQueryPostgreSql(tableName, "idpessoa", "idtitular");
           arqEscrita.println(dependente.getSqlInsert());
        }
    }
    
    // Usa o idBairro
    public static void insertPosto(PrintWriter arqEscrita, String nomeArqLeitura) throws FileNotFoundException, IOException {
        BufferedReader bufferReader = abrirBufferReader(nomeArqLeitura);
        
        PostoInsert posto = new PostoInsert();
        String tableName = "posto";

        int idValue = 1;
        idMaxMinPosto = new MinMaxValueID();
        idMaxMinPosto.idMinValue = idValue;
        
        String arqLeitura = bufferReader.readLine();
        
        while (arqLeitura != null) {
            String[] linha = arqLeitura.split(";");
            posto.idPosto = idValue++;
            posto.nome = linha[1];
            posto.rua = linha[2];
            posto.complemento = linha[3];
            posto.cep = Integer.parseInt(linha[4]);
            posto.numero = Integer.parseInt(linha[5]);
            posto.latitude = Double.parseDouble(linha[6]);
            posto.longitude = Double.parseDouble(linha[7]);
            posto.fkIdBairro = idMaxMinBairro.idMinValue + GENERATOR.nextInt(idMaxMinBairro.idMaxValue);
            
            posto.createInsertQueryPostgreSql("posto", "idposto", "nome", "rua", "complemento",
                                              "cep", "numero", "coordgeolat", "coordgeolong", "idbairro");
            arqEscrita.println(posto.getSqlInsert());
            
            arqLeitura = bufferReader.readLine();
        }

        idMaxMinPosto.idMaxValue = idValue-1; // Recebe o maior valor do id
    }
    
    // Usa o idPessoa e idPosto
    public static void insertAtendente(PrintWriter arqEscrita) {
        PessoaAtendenteInsert atendente = new PessoaAtendenteInsert();
        String tableName = "atendente";

        int idValue = idMaxMinPessoaDependente.idMaxValue + 1;
        idMaxMinPessoaAtentende = new MinMaxValueID();
        idMaxMinPessoaAtentende.idMinValue = idValue; // Recebe o menor valor do id
        idMaxMinPessoaAtentende.idMaxValue = 1095; 
        
        for (int i = idValue; i <= idMaxMinPessoaAtentende.idMaxValue; i++) {
           atendente.fkIdPessoa = idValue++;
           atendente.fkIdPosto = idMaxMinPosto.idMinValue + GENERATOR.nextInt(idMaxMinPosto.idMaxValue);
           atendente.numeroRegistro = GeradorNumRegistro.geraNumeroRegistro(6);

           atendente.createInsertQueryPostgreSql(tableName, "idpessoa", "idposto", "numeroregistro");
           arqEscrita.println(atendente.getSqlInsert());
        }
    }
    
    public static void insertMedicamento(PrintWriter arqEscrita, String nomeArqLeitura) throws FileNotFoundException, IOException {
        BufferedReader bufferReader = abrirBufferReader(nomeArqLeitura);
        
        MedicamentoInsert medicamento = new MedicamentoInsert();
        String tableName = "medicamento";

        int idValue = 1;
        idMaxMinMedicamento = new MinMaxValueID();
        idMaxMinMedicamento.idMinValue = idValue;
        String pathPadraoBulaMedicamentos = "./arquivos/bulas/";
        String tipoArqBulas = ".html";
        
        String linha = bufferReader.readLine();
        
        while (linha != null) {
            medicamento.idMedicamento = idValue++;
            medicamento.nome = linha;
            medicamento.bulaPath = pathPadraoBulaMedicamentos + linha.replace(" ", "") + tipoArqBulas;
            
            medicamento.createInsertQueryPostgreSql(tableName, "idmedicamento",
                                                    "nome", "bula");
            arqEscrita.println(medicamento.getSqlInsert());
            
            linha = bufferReader.readLine();
        }

        idMaxMinMedicamento.idMaxValue = idValue-1; // Recebe o maior valor do id
    }
    
    // Usa o idMedicamento e idCategoria
    public static void insertMedicamentoCategoria(PrintWriter arqEscrita) {
        int numCategoriasMedicamento;
        MedicamentoCategoriaInsert medicamento_categoria = new MedicamentoCategoriaInsert();
        String tableName = "medicamento_categoria";
        
        for (int idMed = idMaxMinMedicamento.idMinValue; idMed <= idMaxMinMedicamento.idMaxValue; idMed++) {
            medicamento_categoria.fkIdMedicamento = idMed;
            
            // Medicamento tem no mínimo uma categoria no máx n
            numCategoriasMedicamento = 1 + GENERATOR.nextInt(2);
            List<Integer> idUsados = new ArrayList();
            for (int i = 0; i < numCategoriasMedicamento; i++) {
                
                do {
                    medicamento_categoria.fkIdCategoria = idMaxMinCategoria.idMinValue + GENERATOR.nextInt(idMaxMinCategoria.idMaxValue);
                } while(idUsados.contains(medicamento_categoria.fkIdCategoria));
                idUsados.add(medicamento_categoria.fkIdCategoria);
                
                // Insere a query no arquivo sql de saída
                medicamento_categoria.createInsertQueryPostgreSql(tableName, "idmedicamento", "idcategoria");
                arqEscrita.println(medicamento_categoria.getSqlInsert());
            }
        }
    }
    
    // Usa o idMedicamento e idLaboratorio
    public static void insertMedicamentoLaboratorio(PrintWriter arqEscrita) {
        int numLaboratoriosMedicamento;
        MedicamentoLaboratorioInsert medicamento_laboratorio = new MedicamentoLaboratorioInsert();
        String tableName = "medicamento_laboratorio";
        
        for (int idMed = idMaxMinMedicamento.idMinValue; idMed <= idMaxMinMedicamento.idMaxValue; idMed++) {
            medicamento_laboratorio.fkIdMedicamento = idMed;
            
            // Medicamento tem no mínimo um laboratorio no máx n
            numLaboratoriosMedicamento = 1 + GENERATOR.nextInt(2);
            List<Integer> idUsados = new ArrayList();
            for (int i = 0; i < numLaboratoriosMedicamento; i++) {
                
                do {
                    medicamento_laboratorio.fkIdLaboratorio = idMaxMinLaboratorio.idMinValue + GENERATOR.nextInt(idMaxMinLaboratorio.idMaxValue);
                } while(idUsados.contains(medicamento_laboratorio.fkIdLaboratorio));
                idUsados.add(medicamento_laboratorio.fkIdLaboratorio);
                
                // Insere a query no arquivo sql de saída
                medicamento_laboratorio.createInsertQueryPostgreSql(tableName, "idmedicamento", "idlaboratorio");
                arqEscrita.println(medicamento_laboratorio.getSqlInsert());
            }
        }
    }
    
    // Usa o idMedicamento e idPosto
    public static void insertMedicamentoPosto(PrintWriter arqEscrita) {
        MedicamentoPostoInsert medicamento_posto = new MedicamentoPostoInsert();
        
        final int INDISPONIVEL = 0;
        final int DISPONIVEL = 1;
        String tableName = "medicamento_posto";
        int anoCorrente = Calendar.getInstance().get(Calendar.YEAR);
        
        int idValue = 1;
        idMaxMinMedicamentoPosto = new MinMaxValueID();
        idMaxMinMedicamentoPosto.idMinValue = idValue;
        
        for (int idPosto = idMaxMinPosto.idMinValue; idPosto <= idMaxMinPosto.idMaxValue; idPosto++) {
            for (int idMed = idMaxMinMedicamento.idMinValue; idMed <= idMaxMinMedicamento.idMaxValue; idMed++) {
                medicamento_posto.idMedicamentoPosto = idValue++;
                medicamento_posto.fkIdMedicamento = idMed;
                medicamento_posto.fkIdPosto = idPosto;
                medicamento_posto.estadoMedicamento = DISPONIVEL; // Todos disponíveis
                medicamento_posto.quantidade = 10000000;
                medicamento_posto.dataVencimento = GeradorDataHora.gerarData(anoCorrente+1, anoCorrente+4);
                
                medicamento_posto.createInsertQueryPostgreSql(tableName, "idmedicamentoposto",
                                                              "idmedicamento", "idposto", "estadomedicamento",
                                                              "quantidade", "dataVencimento");
                arqEscrita.println(medicamento_posto.getSqlInsert());
            }
        }
        
        idMaxMinMedicamentoPosto.idMaxValue = idValue-1;
    }
    
    // Usa o idEstadoSolicitacao e idTitular
    // Faz somente as solicitações do estado comunicado
    public static void insertSolicitacaoComunicado(PrintWriter arqEscrita) {
        SolicitacaoInsert solicitacao = new SolicitacaoInsert();
        
        final int ATENDIDO = 1;
        final int EXPIRADO = 2;
        final int COMUNICADO = 3;
        String tableName = "solicitacao";
        int qntSolicitacaoPorUsuario = 1000;
        
        int idValue = 1;
        idMaxMinSolicitacaoComunicado = new MinMaxValueID();
        idMaxMinSolicitacaoComunicado.idMinValue = idValue;
        
        // A solicitação só para testes é feita por todos os titulares cadastrados, onde cada um faz 1000 dando 1M
        for (int idTitular = idMaxMinPessoaTitular.idMinValue; idTitular <= 10/*idMaxMinPessoaTitular.idMaxValue*/; idTitular++) {
            for (int i = 0; i < qntSolicitacaoPorUsuario; i++) {
                solicitacao.idSolicitacao = idValue++;
                solicitacao.dataHora = new Date(); // Todas solicitações são hoje nesse exato momento
                solicitacao.fkIdEstadoSolicitacao = COMUNICADO;
                solicitacao.quantidadeMedicamentos = 1 + GENERATOR.nextInt(10);
                solicitacao.fkIdTitular = idTitular;

                solicitacao.createInsertQueryPostgreSql(tableName, "idsolicitacao", "quantidademedicamento",
                                                              "data_hora", "idtitular", "idestadosolicitacao");
                arqEscrita.println(solicitacao.getSqlInsert());
            }
        }
        
        idMaxMinSolicitacaoComunicado.idMaxValue = idValue-1;
    }
    
    // Usa o idEstadoSolicitacao e idTitular
    // Faz somente as solicitações do estado expirado
    public static void insertSolicitacaoExpirado(PrintWriter arqEscrita) {
        SolicitacaoInsert solicitacao = new SolicitacaoInsert();
        
        final int ATENDIDO = 1;
        final int EXPIRADO = 2;
        final int COMUNICADO = 3;
        String tableName = "solicitacao";
        int qntSolicitacaoPorUsuario = 1000;
        
        int idValue = idMaxMinSolicitacaoComunicado.idMaxValue + 1;
        idMaxMinSolicitacaoExpirado = new MinMaxValueID();
        idMaxMinSolicitacaoExpirado.idMinValue = idValue;
        
        // A solicitação só para testes é feita por todos os titulares cadastrados, onde cada um faz 1000 dando 1M
        for (int idTitular = idMaxMinPessoaTitular.idMinValue; idTitular <= 10/*idMaxMinPessoaTitular.idMaxValue*/; idTitular++) {
            Calendar dataSemanaPassada = Calendar.getInstance();
            dataSemanaPassada.add(Calendar.DATE, -7); // Uma semana atrás
            
            for (int i = 0; i < qntSolicitacaoPorUsuario; i++) {
                solicitacao.idSolicitacao = idValue++;
                solicitacao.dataHora = dataSemanaPassada.getTime(); // Todas solicitações são de uma semana atrás
                solicitacao.fkIdEstadoSolicitacao = EXPIRADO;
                solicitacao.quantidadeMedicamentos = 1 + GENERATOR.nextInt(10);
                solicitacao.fkIdTitular = idTitular;

                solicitacao.createInsertQueryPostgreSql(tableName, "idsolicitacao", "quantidademedicamento",
                                                              "data_hora", "idtitular", "idestadosolicitacao");
                arqEscrita.println(solicitacao.getSqlInsert());
            }
        }
        
        idMaxMinSolicitacaoExpirado.idMaxValue = idValue-1;
    }
    
    // Usa o idSolitacao e idMedicamentoPosto
    public static void insertSolicitacaoMedicamentoPosto(PrintWriter arqEscrita) {
        SolicitacaoMedicamentoPosto solicitacao_medicamentoPosto = new SolicitacaoMedicamentoPosto();
        
        String tableName = "solicitacao_medicamentoposto";
        
        for (int idSolComunicado = idMaxMinSolicitacaoComunicado.idMinValue; idSolComunicado <= idMaxMinSolicitacaoComunicado.idMaxValue; idSolComunicado++) {
            solicitacao_medicamentoPosto.fkIdSolicitacao = idSolComunicado;
            solicitacao_medicamentoPosto.fkIdMedicamentoPosto = idMaxMinMedicamentoPosto.idMinValue + GENERATOR.nextInt(idMaxMinMedicamentoPosto.idMaxValue);

            solicitacao_medicamentoPosto.createInsertQueryPostgreSql(tableName, "idsolicitacao", "idmedicamentoposto");
            arqEscrita.println(solicitacao_medicamentoPosto.getSqlInsert());
        }
        
        for (int idSolExpirado = idMaxMinSolicitacaoExpirado.idMinValue; idSolExpirado <= idMaxMinSolicitacaoExpirado.idMaxValue; idSolExpirado++) {
            solicitacao_medicamentoPosto.fkIdSolicitacao = idSolExpirado;
            solicitacao_medicamentoPosto.fkIdMedicamentoPosto = idMaxMinMedicamentoPosto.idMinValue + GENERATOR.nextInt(idMaxMinMedicamentoPosto.idMaxValue);

            solicitacao_medicamentoPosto.createInsertQueryPostgreSql(tableName, "idsolicitacao", "idmedicamentoposto");
            arqEscrita.println(solicitacao_medicamentoPosto.getSqlInsert());
        }
    }
}


