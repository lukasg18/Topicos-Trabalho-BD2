package insercaodados.entidades.medicamentosfundao.semchaveestrangeira;

import insercaodados.entidades.medicamentosfundao.bdinsercao.Insert;
import insercaodados.entidades.medicamentosfundao.bdinsercao.InsertPostgreSql;

public class EstadoInsert extends Insert implements InsertPostgreSql {
    public int idEstado;
    public String nome;

    public EstadoInsert() {
    }
    
    public EstadoInsert(String sqlQueryInsert) {
        super.insertSql = sqlQueryInsert;
    }

    @Override
    public String createInsertQueryPostgreSql(String... params) {
        super.insertSql = String.format("INSERT INTO %s (%s, %s) VALUES (%d, '%s');"
        , params[0], params[1], params[2], this.idEstado, this.nome);
        
        return super.insertSql;
    }
}
