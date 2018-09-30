package insercaodados.entidades.medicamentosfundao.comchaveestrangeira;

import insercaodados.entidades.medicamentosfundao.bdinsercao.Insert;
import insercaodados.entidades.medicamentosfundao.bdinsercao.InsertPostgreSql;

public class BairroInsert extends Insert implements InsertPostgreSql {
    public int idBairro;
    public String nome;
    public int fkIdMunicipio;

    public BairroInsert() {
    }
    
    public BairroInsert(String sqlQueryInsert) {
        super.insertSql = insertSql;
    }
    
    @Override
    public String createInsertQueryPostgreSql(String... params) {
        super.insertSql = String.format("INSERT INTO %s (%s, %s, %s) VALUES (%d, '%s', %d);"
        , params[0], params[1], params[2], params[3],
        this.idBairro, this.nome, this.fkIdMunicipio);
        
        return super.insertSql;
    }
}
