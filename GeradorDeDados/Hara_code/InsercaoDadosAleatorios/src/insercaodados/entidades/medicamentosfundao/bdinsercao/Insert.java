package insercaodados.entidades.medicamentosfundao.bdinsercao;

public abstract class Insert {
    protected String insertSql;
    
    public String getSqlInsert() {
        return this.insertSql;
    }
}
