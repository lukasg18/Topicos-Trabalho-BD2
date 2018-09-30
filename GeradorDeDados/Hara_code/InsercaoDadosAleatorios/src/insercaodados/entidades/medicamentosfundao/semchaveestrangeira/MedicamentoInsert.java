package insercaodados.entidades.medicamentosfundao.semchaveestrangeira;

import insercaodados.entidades.medicamentosfundao.bdinsercao.Insert;
import insercaodados.entidades.medicamentosfundao.bdinsercao.InsertPostgreSql;

public class MedicamentoInsert extends Insert implements InsertPostgreSql{
    public int idMedicamento;
    public String nome;
    public String bulaPath;

    public MedicamentoInsert() {
    }
    
    public MedicamentoInsert(String sqlQueryInsert) {
        super.insertSql = sqlQueryInsert;
    }

    @Override
    public String createInsertQueryPostgreSql(String... params) {
        super.insertSql = String.format("INSERT INTO %s (%s, %s, %s) VALUES (%d, '%s', '%s');"
            , params[0], params[1], params[2], params[3], this.idMedicamento, this.nome, this.bulaPath);
        
        return super.insertSql;
    }
}