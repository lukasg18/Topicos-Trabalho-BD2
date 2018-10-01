package insercaodados.entidades.medicamentosfundao.comchaveestrangeira;

import insercaodados.entidades.medicamentosfundao.bdinsercao.Insert;
import insercaodados.entidades.medicamentosfundao.bdinsercao.InsertPostgreSql;

public class MedicamentoPostoInsert extends Insert implements InsertPostgreSql{
    public int idMedicamentoPosto;
    public int fkIdMedicamento;
    public int fkIdPosto;
    public int estadoMedicamento;

    public MedicamentoPostoInsert() {
    }
    
    public MedicamentoPostoInsert(String sqlQueryInsert) {
        super.insertSql = sqlQueryInsert;
    }

    @Override
    public String createInsertQueryPostgreSql(String... params) {
        
        super.insertSql = String.format("INSERT INTO %s (%s, %s, %s, %s) VALUES (%d, %d, %d, %d);"
            , params[0], params[1], params[2], params[3], params[4], this.idMedicamentoPosto,
            this.fkIdMedicamento, this.fkIdPosto, this.estadoMedicamento);
        
        return super.insertSql;
    }
}
