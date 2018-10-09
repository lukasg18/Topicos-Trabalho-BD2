# ==================================================
# Cabecalho 
# ==================================================

from random import randint
import sys
import gerador

nomeDoArquivo = "sql_insertCompleto.sql"
qtd_atendente = 10  #qtd <= qtd_pessoa
qtd_bairro = 13  #fixo, bairros de Fundão
qtd_depedente = 10  #qtd <= qtd_pessoa
qtd_entrada_medicamento = 10  #qtd >= qtd_medicamento
qtd_estado = 1  #fixo, Espirito Santo
qtd_laboratorio = 10  #qtd >= 1
qtd_medicamento = 91  #Fixo, peguei de uma lista
qtd_medicamento_laboratorio = 10  #qtd >= 0?
qtd_medicamento_posto = 20  #qtd >= qtd_posto?
qtd_municipio = 1  #fixo, Fundão
qtd_pessoa = 30  #qtd >=1
qtd_posto = 20  #qtd >= 1
qtd_recebimento = 10  #qtd >= 0?
qtd_recebimento_medicamentoposto = 10  #qtd <= qtd_recebimento?
qtd_solicitacao = 20  #qtd >= 1?
qtd_solicitacao_medicamentoposto = 20  #qtd >= qtd_solicitacao?
qtd_titular = 20  #qtd <= qtd_pessoa

# ==================================================
# FUNÇÕES
# ==================================================

# --------------------------------------------------
def tabelaAtendente():
	vFile = open(nomeDoArquivo,'a')
	vFile.write("\n-- TABELA ATENDENTE\n\n")

	idpessoa = gerador.numerosDistintos(qtd_atendente, 1, qtd_pessoa)
	idposto = gerador.numerosAleatorios(qtd_atendente, 1, qtd_posto)

	for i in range(0, qtd_atendente):
		campos = ["idpessoa","numeroregistro","idposto"]
		tipos = ["int", "int", "int"]
		valores = [idpessoa[i], i+1, idposto[i]]
		vFile.write(gerador.sql_insert("atendente", campos, tipos, valores) + "\n")
	#end
	vFile.close()
#end

# --------------------------------------------------
def tabelaBairro():
	vFile = open("lst_bairros.txt",'r')
	lst = []
	linha = vFile.readline()
	while(linha != ""):
		if(linha[-1] == '\n'):
			linha = linha[:-1]
		#end
		lst.append(linha)
		linha = vFile.readline()
	#end
	vFile.close()

	vFile = open(nomeDoArquivo,'a')
	vFile.write("\n-- TABELA BAIRRO\n\n")
	for i in range(0,len(lst)):
		campos = ["idbairro", "nome", "idmunicipio"]
		tipos = ["int", "char", "int"]
		valores = [i+1, lst[i], 1]
		vFile.write(gerador.sql_insert("bairro", campos, tipos, valores) + "\n")
	#end
	vFile.close()
#end

# --------------------------------------------------
def tabelaDependente():
	vFile = open(nomeDoArquivo,'a')
	vFile.write("\n-- TABELA DEPENDENTE\n\n")

	idpessoa = gerador.numerosDistintos(qtd_depedente, 1, qtd_pessoa)
	idtitular = gerador.numerosAleatorios(qtd_depedente, 1, qtd_titular)

	for i in range(0, qtd_depedente):
		campos = ["idpessoa","idtitular"]
		tipos = ["int", "int"]
		valores = [idpessoa[i], idtitular[i]]
		vFile.write(gerador.sql_insert("dependente", campos, tipos, valores) + "\n")
	#end
	vFile.close()
#end

# --------------------------------------------------
def tabelaEntradaMedicamento():
	vFile = open(nomeDoArquivo,'a')
	vFile.write("\n-- TABELA ENTRADA_MEDICAMENTO\n\n")

	quant = gerador.numerosAleatorios(qtd_entrada_medicamento, 1, 100)
	tempo = gerador.timestamp(qtd_entrada_medicamento, 2014, 2020)
	id_ate = gerador.numerosAleatorios(qtd_entrada_medicamento, 1, qtd_atendente)
	id_pos = gerador.numerosAleatorios(qtd_entrada_medicamento, 1, qtd_medicamento_posto)

	for i in range(0, qtd_entrada_medicamento):
		campos = ["identradamedicamento", "quantidade", "data_hora", "idatendente", "idmedicamentoposto"]
		tipos = ["int", "int", "time", "int", "int"]
		valores = [i+1, quant[i], tempo[i], id_ate[i], id_pos[i]]
		vFile.write(gerador.sql_insert("entrada_medicamento", campos, tipos, valores) + "\n")
	#end
	vFile.close()
#end

# --------------------------------------------------
def tabelaEstado():
	vFile = open(nomeDoArquivo,'a')
	vFile.write("\n-- TABELA ESTADO\n\n")
	
	campos = ["idestado", "nome"]
	tipos = ["int", "char"]
	valores = [1, "Espírito Santo"]
	vFile.write(gerador.sql_insert("estado", campos, tipos, valores) + "\n")
	
	vFile.close()
#end

# --------------------------------------------------
def tabelaLaboratorio():
	vFile = open(nomeDoArquivo,'a')
	vFile.write("\n-- TABELA LABORATORIO\n\n")
	
	for i in range(0, qtd_laboratorio):
		campos = ["idlaboratorio", "nome"]
		tipos = ["int", "char"]
		valores = [i+1, gerador.gibberish(1)]
		vFile.write(gerador.sql_insert("laboratorio", campos, tipos, valores) + "\n")
	#end
	vFile.close()
#end

# --------------------------------------------------
def tabelaMedicamento():
	vFile = open("lst_remedios.txt",'r', encoding = "ISO-8859-1")
	lstRemedios = []
	linha = vFile.readline()
	while(linha != ""):
		if(linha[-1] == '\n'):
			linha = linha[:-1]
		#end
		lstRemedios.append(linha)
		linha = vFile.readline()
	#end
	vFile.close()

	vFile = open(nomeDoArquivo,'a')
	vFile.write("\n-- TABELA MEDICAMENTOS\n\n")
	for i in range(0,len(lstRemedios)):
		campos = ["idmedicamento", "nome", "bula"]
		tipos = ["int", "char", "char"]
		valores = [i+1, lstRemedios[i], gerador.gibberish(randint(10,30))]
		vFile.write(gerador.sql_insert("medicamento", campos, tipos, valores) + "\n")
	#end
	vFile.close()
#end

# --------------------------------------------------
def tabelaMedicamentoLaboratorio():
	vFile = open(nomeDoArquivo,'a')
	vFile.write("\n-- TABELA MEDICAMENTO_LABORATORIO\n\n")

	for idlab in range(1, qtd_laboratorio):
		idmed = gerador.numerosDistintos(qtd_medicamento_laboratorio, 1, qtd_medicamento)

		for i in range(0, qtd_medicamento_laboratorio):
			campos = ["idmedicamento", "idlaboratorio"]
			tipos = ["int", "int"]
			valores = [idmed[i], idlab]
			vFile.write(gerador.sql_insert("medicamento_laboratorio", campos, tipos, valores) + "\n")
		#end
	#end
	vFile.close()
#end

# --------------------------------------------------
def tabelaMedicamentoPosto():
	vFile = open(nomeDoArquivo,'a')
	vFile.write("\n-- TABELA MEDICAMENTO_POSTO\n\n")

	tempo = gerador.timestamp(qtd_medicamento_posto, 2014, 2020)
	id_pos = gerador.numerosAleatorios(qtd_medicamento_posto, 1, qtd_posto)
	id_med = gerador.numerosAleatorios(qtd_medicamento_posto, 1, qtd_medicamento)

	for i in range(0, qtd_medicamento_posto):
		campos = ["idmedicamentoposto", "estadomedicamento", "quantidade", "datavencimento", "idposto", "idmedicamento"]
		tipos = ["int", "int", "int", "time", "int", "int"]
		valores = [i+1, randint(1,2), randint(1,20), tempo[i], id_pos[i], id_med[i]]
		vFile.write(gerador.sql_insert("medicamento_posto", campos, tipos, valores) + "\n")
	#end
	vFile.close()
#end

# --------------------------------------------------
def tabelaMunicipio():
	vFile = open(nomeDoArquivo,'a')
	vFile.write("\n-- TABELA MUNICIPIO\n\n")
	
	campos = ["idmunicipio", "nome", "idestado"]
	tipos = ["int", "char", "int"]
	valores = [1, "Fundão", 1]
	vFile.write(gerador.sql_insert("municipio", campos, tipos, valores) + "\n")
	
	vFile.close()
#end

# --------------------------------------------------
def tabelaPessoa():
	vFile = open(nomeDoArquivo,'a')
	vFile.write("\n-- TABELA PESSOA\n\n")

	nome = gerador.nome(qtd_pessoa)
	data = gerador.timestamp(qtd_pessoa, 1950, 2018)
	cpf = gerador.cpf(qtd_pessoa)
	rg = gerador.rg(qtd_pessoa)

	for i in range(0, qtd_pessoa):
		campos = ["idpessoa", "nome", "datanascimento", "cpf", "sexo", "rg"]
		tipos = ["int", "char", "time", "char", "int", "int"]
		valores = [i+1, nome[i], data[i], cpf[i], gerador.definirSexo(nome[i]), rg[i]]
		vFile.write(gerador.sql_insert("pessoa", campos, tipos, valores) + "\n")
	#end
	vFile.close()
#end

# --------------------------------------------------
def tabelaPosto():
	vFile = open(nomeDoArquivo,'a')
	vFile.write("\n-- TABELA POSTO\n\n")
	
	for i in range(0, qtd_posto):
		compl = "Ed. " + gerador.gibberish(1)
		nome = "posto " + gerador.gibberish(1)
		rua = "rua " + gerador.gibberish(1)
		cep = randint(100000000, 999999999)
		num = randint(10, 99)
		coord1 = randint(10,99)
		coord2 = randint(10,99)
		bairro = randint(1,qtd_bairro)

		campos = ["idposto","complemento","nome","rua","cep","numero","coordgeolong","coordgeolat","idbairro"]
		tipos = ["int", "char", "char", "char", "int", "int", "int", "int", "int"]
		valores = [i+1, compl, nome, rua, cep, num, coord1, coord2, bairro]
		vFile.write(gerador.sql_insert("posto", campos, tipos, valores) + "\n")
	#end
	vFile.close()
#end

# --------------------------------------------------
def tabelaRecebimento():
	vFile = open(nomeDoArquivo,'a')
	vFile.write("\n-- TABELA RECEBIMENTO\n\n")
	
	for i in range(0, qtd_recebimento):
		cpo1 = randint(1,10)
		cpo2 = gerador.timestamp(1, 2014, 2018)[0]
		cpo3 = randint(1,qtd_pessoa)
		cpo4 = gerador.numerosDistintos(qtd_recebimento_medicamentoposto, 1, qtd_atendente)

		campos = ["idrecebimento","quantidademedicamentos","data_hora","idpessoa","idatendente"]
		tipos = ["int", "int", "time", "int", "int"]
		valores = [i+1, cpo1, cpo2, cpo3, cpo4[i]]
		vFile.write(gerador.sql_insert("recebimento", campos, tipos, valores) + "\n")
	#end
	vFile.close()
#end

def tabelaRecebimento_Medicamentoposto():
	vFile = open(nomeDoArquivo,'a')
	vFile.write("\n-- TABELA RECEBIMENTO_MEDICAMENTOPOSTO\n\n")
	
	cpo1 = gerador.numerosDistintos(qtd_recebimento_medicamentoposto, 1, qtd_recebimento)
	cpo2 = gerador.numerosAleatorios(qtd_recebimento_medicamentoposto, 1, qtd_medicamento_posto)

	for i in range(0, qtd_recebimento_medicamentoposto):
		campos = ["idrecebimento","idmedicamentoposto"]
		tipos = ["int", "int"]
		valores = [cpo1[i], cpo2[i]]
		vFile.write(gerador.sql_insert("recebimento_medicamentoposto", campos, tipos, valores) + "\n")
	#end
	vFile.close()
#end

def tabelaSolicitacao():
	vFile = open(nomeDoArquivo,'a')
	vFile.write("\n-- TABELA SOLICITACAO\n\n")
	
	cpo1 = gerador.timestamp(qtd_solicitacao, 2014, 2018)
	cpo2 = gerador.numerosAleatorios(qtd_solicitacao, 1, 20)
	cpo3 = gerador.numerosAleatorios(qtd_solicitacao, 1, 2)
	cpo4 = gerador.numerosAleatorios(qtd_solicitacao, 1, qtd_titular)

	for i in range(0, qtd_solicitacao):
		campos = ["idsolicitacao","data_hora","quantidademedicamento","estadosolicitacao","idtitular"]
		tipos = ["int", "time", "int", "int", "int"]
		valores = [i+1, cpo1[i], cpo2[i], cpo3[i], cpo4[i]]
		vFile.write(gerador.sql_insert("solicitacao", campos, tipos, valores) + "\n")
	#end
	vFile.close()
#end

def tabelaSolicitacao_Medicamentoposto():
	vFile = open(nomeDoArquivo,'a')
	vFile.write("\n-- TABELA SOLICITACAO_MEDICAMENTOPOSTO\n\n")
	
	cpo1 = gerador.numerosDistintos(qtd_solicitacao_medicamentoposto, 1, qtd_solicitacao)
	cpo2 = gerador.numerosDistintos(qtd_solicitacao_medicamentoposto, 1, qtd_medicamento_posto)

	for i in range(0, qtd_solicitacao_medicamentoposto):
		campos = ["idsolicitacao","idmedicamentoposto"]
		tipos = ["int", "int"]
		valores = [cpo1[i], cpo2[i]]
		vFile.write(gerador.sql_insert("solicitacao_medicamentoposto", campos, tipos, valores) + "\n")
	#end
	vFile.close()
#end

def tabelaTitular():
	vFile = open(nomeDoArquivo,'a')
	vFile.write("\n-- TABELA TITULAR\n\n")
	
	cpo1 = gerador.numerosDistintos(qtd_titular, 1, qtd_pessoa)

	for i in range(0, qtd_titular):
		campos = ["idpessoa","numerosus"]
		tipos = ["int", "int"]
		valores = [cpo1[i], (i+1)*10000]
		vFile.write(gerador.sql_insert("titular", campos, tipos, valores) + "\n")
	#end
	vFile.close()
#end

# ==================================================
# EXECUÇÃO
# ==================================================

# --------------------------------------------------
def main():
	vFile = open(nomeDoArquivo,'w')
	vFile.write("")
	vFile.close()
	print("Arquivo resetado")

	print("criando Estado... ", end='')
	sys.stdout.flush()
	tabelaEstado()
	print("concluido!")
	
	print("criando Municipio... ", end='')
	sys.stdout.flush()
	tabelaMunicipio()
	print("concluido!")
	
	print("criando Bairro... ", end='')
	sys.stdout.flush()
	tabelaBairro()
	print("concluido!")
	
	print("criando Laboratorio... ", end='')
	sys.stdout.flush()
	tabelaLaboratorio()
	print("concluido!")
	
	print("criando Medicamento... ", end='')
	sys.stdout.flush()
	tabelaMedicamento()
	print("concluido!")
	
	print("criando Pessoa... ", end='')
	sys.stdout.flush()
	tabelaPessoa()
	print("concluido!")

	print("criando Posto... ", end='')
	sys.stdout.flush()
	tabelaPosto()
	print("concluido!")
	
	print("criando Atendente... ", end='')
	sys.stdout.flush()
	tabelaAtendente()
	print("concluido!")

	print("criando Titular... ", end='')
	sys.stdout.flush()
	tabelaTitular()
	print("concluido!")
	
	print("criando Dependente... ", end='')
	sys.stdout.flush()
	tabelaDependente()
	print("concluido!")
	
	print("criando Solicitacao... ", end='')
	sys.stdout.flush()
	tabelaSolicitacao()
	print("concluido!")

	print("criando Solicitacao_MedicamentoPosto... ", end='')
	sys.stdout.flush()
	tabelaSolicitacao_Medicamentoposto()
	print("concluido!")

	print("criando Entrada_Medicamento... ", end='')
	sys.stdout.flush()
	tabelaEntradaMedicamento()
	print("concluido!")

	print("criando Medicamento_Laboratorio... ", end='')
	sys.stdout.flush()
	tabelaMedicamentoLaboratorio()
	print("concluido!")

	print("criando Medicamento_Posto... ", end='')
	sys.stdout.flush()
	tabelaMedicamentoPosto()
	print("concluido!")
	
	print("criando Recebimento... ", end='')
	sys.stdout.flush()
	tabelaRecebimento()
	print("concluido!")

	print("criando Recebimento_MedicamentoPosto... ", end='')
	sys.stdout.flush()
	tabelaRecebimento_Medicamentoposto()
	print("concluido!")
	
	print("Arquivo gerado!")
#end

# --------------------------------------------------
if __name__ == "__main__":
	main()
#end
