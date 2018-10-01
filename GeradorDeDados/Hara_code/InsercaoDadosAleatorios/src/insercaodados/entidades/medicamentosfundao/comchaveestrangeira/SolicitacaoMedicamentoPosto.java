package insercaodados.entidades.medicamentosfundao.comchaveestrangeira;

import insercaodados.entidades.medicamentosfundao.bdinsercao.Insert;
import insercaodados.entidades.medicamentosfundao.bdinsercao.InsertPostgreSql;

public class SolicitacaoMedicamentoPosto extends Insert implements InsertPostgreSql{
    public int fkIdSolicitacao;
    public int fkIdMedicamentoPosto;

    public SolicitacaoMedicamentoPosto() {
    }
    
    public SolicitacaoMedicamentoPosto(String sqlQueryInsert) {
        super.insertSql = sqlQueryInsert;
    }

    @Override
    public String createInsertQueryPostgreSql(String... params) {
        super.insertSql = String.format("INSERT INTO %s (%s, %s) VALUES (%d, %d);"
            , params[0], params[1], params[2], this.fkIdSolicitacao, this.fkIdMedicamentoPosto);
        
        return super.insertSql;
    }
}
