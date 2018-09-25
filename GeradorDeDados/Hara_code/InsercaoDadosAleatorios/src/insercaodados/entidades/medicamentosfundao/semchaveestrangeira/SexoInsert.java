package insercaodados.entidades.medicamentosfundao.semchaveestrangeira;

import insercaodados.entidades.medicamentosfundao.bdinsercao.Insert;
import insercaodados.entidades.medicamentosfundao.bdinsercao.InsertPostgreSql;

public class SexoInsert extends Insert implements InsertPostgreSql {
    public int idSexo;
    public String tipo;

    public SexoInsert() {
    }
    
    public SexoInsert(String sqlQueryInsert) {
        super.insertSql = sqlQueryInsert;
    }
    
    @Override
    public String createInsertQueryPostgreSql(String... params) {
        super.insertSql = String.format("INSERT INTO %s (%s, %s) VALUES (%d, '%s');"
            , params[0], params[1], params[2], this.idSexo, this.tipo
        );
        
        return super.insertSql;
    }
}


