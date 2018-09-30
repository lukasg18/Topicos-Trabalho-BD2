package insercaodados.entidades.medicamentosfundao.comchaveestrangeira;

import insercaodados.entidades.medicamentosfundao.bdinsercao.Insert;
import insercaodados.entidades.medicamentosfundao.bdinsercao.InsertPostgreSql;

public class MunicipioInsert extends Insert implements InsertPostgreSql {
    public int idMunicipio;
    public String nome;
    public int fkIdEstado;

    public MunicipioInsert() {
    }
    
    public MunicipioInsert(String sqlQueryInsert) {
        super.insertSql = insertSql;
    }
    
    @Override
    public String createInsertQueryPostgreSql(String... params) {
        super.insertSql = String.format("INSERT INTO %s (%s, %s, %s) VALUES (%d, '%s', %d);"
        , params[0], params[1], params[2], params[3], 
        this.idMunicipio, this.nome, this.fkIdEstado);
        
        return super.insertSql;
    }
    
    
}
