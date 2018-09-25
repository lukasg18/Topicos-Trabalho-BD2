package insercaodados.entidades.medicamentosfundao.comchaveestrangeira;

import insercaodados.entidades.medicamentosfundao.bdinsercao.Insert;
import insercaodados.entidades.medicamentosfundao.bdinsercao.InsertPostgreSql;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Pessoa extends Insert implements InsertPostgreSql {
    public int idPessoa;
    public String nome;
    public Date dataNascimento;
    public String cpf;
    public int rg;
    public int fkIdSexo;

    public Pessoa() {
    }
    
    public Pessoa(String sqlQueryInsert) {
        super.insertSql = insertSql;
    }
    
    @Override
    public String createInsertQueryPostgreSql(String... params) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
        String dataFormatadaPostgreSql = sdf.format(this.dataNascimento).replace('/', '-');
        
        super.insertSql = String.format("INSERT INTO %s (%s, %s, %s, %s, %s, %s) "
            + "VALUES (%d, '%s', '%s', '%s', %d, %d);"
            , params[0], params[1], params[2], params[3], params[4], params[5], params[6], 
            this.idPessoa, this.nome, dataFormatadaPostgreSql, this.cpf, this.rg, 
            this.fkIdSexo);
        
        return super.insertSql;
    }
}
