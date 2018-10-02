package insercaodados.entidades.medicamentosfundao.comchaveestrangeira;

import insercaodados.entidades.medicamentosfundao.bdinsercao.Insert;
import insercaodados.entidades.medicamentosfundao.bdinsercao.InsertPostgreSql;
import java.text.SimpleDateFormat;
import java.util.Date;

public class MedicamentoPostoInsert extends Insert implements InsertPostgreSql{
    public int idMedicamentoPosto;
    public int fkIdMedicamento;
    public int fkIdPosto;
    public int estadoMedicamento;
    public int quantidade;
    public Date dataVencimento;

    public MedicamentoPostoInsert() {
    }
    
    public MedicamentoPostoInsert(String sqlQueryInsert) {
        super.insertSql = sqlQueryInsert;
    }

    @Override
    public String createInsertQueryPostgreSql(String... params) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
        String dataFormatadaPostgreSql = sdf.format(this.dataVencimento).replace('/', '-');
        
        super.insertSql = String.format("INSERT INTO %s (%s, %s, %s, %s, %s, %s) "
            + "VALUES (%d, %d, %d, %d, %d, '%s');"
            , params[0], params[1], params[2], params[3], params[4], params[5], params[6],
            this.idMedicamentoPosto, this.fkIdMedicamento, this.fkIdPosto, this.estadoMedicamento,
            this.quantidade, dataFormatadaPostgreSql);
        
        return super.insertSql;
    }
}
