package insercaodados.entidades.medicamentosfundao.comchaveestrangeira;

import insercaodados.entidades.medicamentosfundao.bdinsercao.Insert;
import insercaodados.entidades.medicamentosfundao.bdinsercao.InsertPostgreSql;

public class PostoInsert extends Insert implements InsertPostgreSql {
    public int idPosto;
    public String nome;
    public String rua;
    public String complemento;
    public int cep;
    public int numero;
    public double latitude;
    public double longitude;
    public int fkIdBairro;

    public PostoInsert() {
    }
    
    public PostoInsert(String sqlQueryInsert) {
        super.insertSql = sqlQueryInsert;
    }

    @Override
    public String createInsertQueryPostgreSql(String... params) {
        String strLatitude = Double.toString(this.latitude).replace(',', '.');
        String strLongitude = Double.toString(this.longitude).replace(',', '.');
        
        super.insertSql = String.format("INSERT INTO %s (%s, %s, %s, %s, %s, %s, %s, %s, %s) "
                + "VALUES (%d, '%s', '%s', '%s', %d, %d, %s, %s, %d);"
        , params[0], params[1], params[2], params[3], params[4], params[5], params[6], params[7], params[8], params[9],
        this.idPosto, this.nome, this.rua, this.complemento, this.cep, this.numero, strLatitude, strLongitude,
        this.fkIdBairro);
        
        return super.insertSql;
    }
}
