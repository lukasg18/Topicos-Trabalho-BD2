package insercaodados.entidades.medicamentosfundao.comchaveestrangeira;

import insercaodados.entidades.medicamentosfundao.bdinsercao.Insert;
import insercaodados.entidades.medicamentosfundao.bdinsercao.InsertPostgreSql;

public class PessoaAtendenteInsert extends Insert implements InsertPostgreSql {
    public int fkIdPessoa;
    public int fkIdPosto;
    public int numeroRegistro;

    public PessoaAtendenteInsert() {
    }
    
    public PessoaAtendenteInsert(String sqlQueryInsert) {
        super.insertSql = sqlQueryInsert;
    }

    @Override
    public String createInsertQueryPostgreSql(String... params) {
        super.insertSql = String.format("INSERT INTO %s (%s, %s, %s) VALUES (%d, %d, %d);"
        , params[0], params[1], params[2], params[3], this.fkIdPessoa, this.fkIdPosto, this.numeroRegistro);
        
        return super.insertSql;
    }
}
