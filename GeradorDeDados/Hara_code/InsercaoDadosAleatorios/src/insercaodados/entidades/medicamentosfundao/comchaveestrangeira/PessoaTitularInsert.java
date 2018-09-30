package insercaodados.entidades.medicamentosfundao.comchaveestrangeira;

import insercaodados.entidades.medicamentosfundao.bdinsercao.Insert;
import insercaodados.entidades.medicamentosfundao.bdinsercao.InsertPostgreSql;

public class PessoaTitularInsert extends Insert implements InsertPostgreSql {
    public String numeroSus;
    public int fkIdPessoa;

    public PessoaTitularInsert() {
    }
    
    public PessoaTitularInsert(String sqlQueryInsert) {
        super.insertSql = sqlQueryInsert;
    }

    @Override
    public String createInsertQueryPostgreSql(String... params) {
        super.insertSql = String.format("INSERT INTO %s (%s, %s) VALUES (%s, %d);"
        , params[0], params[1], params[2], this.numeroSus, this.fkIdPessoa);
        
        return super.insertSql;
    }
}
