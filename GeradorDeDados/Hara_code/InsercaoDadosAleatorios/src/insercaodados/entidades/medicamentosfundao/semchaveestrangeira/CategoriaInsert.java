package insercaodados.entidades.medicamentosfundao.semchaveestrangeira;

import insercaodados.entidades.medicamentosfundao.bdinsercao.Insert;
import insercaodados.entidades.medicamentosfundao.bdinsercao.InsertPostgreSql;

public class CategoriaInsert extends Insert implements InsertPostgreSql{
    public int idCategoria;
    public String tipo;

    public CategoriaInsert() {
    }
    
    public CategoriaInsert(String sqlQueryInsert) {
        super.insertSql = sqlQueryInsert;
    }

    @Override
    public String createInsertQueryPostgreSql(String... params) {
        super.insertSql = String.format("INSERT INTO %s (%s, %s) VALUES (%d, '%s');"
            , params[0], params[1], params[2], this.idCategoria, this.tipo);
        
        return super.insertSql;
    }
}
