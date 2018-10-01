package insercaodados.entidades.medicamentosfundao.comchaveestrangeira;

import insercaodados.entidades.medicamentosfundao.bdinsercao.Insert;
import insercaodados.entidades.medicamentosfundao.bdinsercao.InsertPostgreSql;
import java.text.SimpleDateFormat;
import java.util.Date;

public class SolicitacaoInsert extends Insert implements InsertPostgreSql{
    public int idSolicitacao;
    public int quantidadeMedicamentos;
    public Date dataHora;
    public int fkIdTitular;
    public int fkIdEstadoSolicitacao;

    public SolicitacaoInsert() {
    }
    
    public SolicitacaoInsert(String sqlQueryInsert) {
        super.insertSql = sqlQueryInsert;
    }

    @Override
    public String createInsertQueryPostgreSql(String... params) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        String dataHoraFormatadaPostgreSql = sdf.format(this.dataHora).replace('/', '-');
        
        super.insertSql = String.format("INSERT INTO %s (%s, %s, %s, %s, %s) VALUES (%d, %d, '%s', %d, %d);"
            , params[0], params[1], params[2], params[3], params[4], params[5], this.idSolicitacao,
            this.quantidadeMedicamentos, dataHoraFormatadaPostgreSql, this.fkIdTitular, this.fkIdEstadoSolicitacao);
        
        return super.insertSql;
    }
}

