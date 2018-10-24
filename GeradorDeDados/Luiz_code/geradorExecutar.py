# ==================================================
# Cabecalho 
# ==================================================
#
# Esse software gera dados, em sua maioria aleatórios, para
# inserir no projeto FilaZero para fins de teste. A otimização
# Desse script, assim como de gerador.py, não é uma prioridade. 
#

from random import randint
import sys
import gerador

nomeDoArquivo = "sql_insertCompleto.sql"

qtd_pessoa = 100000  #num >= 1
qtd_atendente = 20  #num <= qtd_pessoa
qtd_depedente = 60000  #num <= qtd_pessoa
qtd_titular = 39980  #num <= qtd_pessoa
qtd_registro_medicamento = 1000  #num >= 0
qtd_medicamento_laboratorio = 100  #num >= 1
qtd_medicamento_posto = 1000  #num >= 0
qtd_posto = 20  #num >= 1
qtd_recebimento = 100000  #num >= 0?
qtd_solicitacao = 1500000  #num >= 1?

qtd_estado = 1  #Valor fixo
qtd_bairro = 13  #Valor fixo
qtd_municipio = 1  #Valor fixo
qtd_laboratorio = 196  #Valor fixo
qtd_medicamento = 91  #Valor fixo

key_titular = []
key_atendente = []

# Link para o banco:
# https://api.elephantsql.com/console/60cc6b7c-da02-4b0c-ad60-c69f829a32f1/browser?

# ==================================================
# FUNÇÕES
# ==================================================

# --------------------------------------------------
def tabelaAtendente():
	print("criando Atendente... ", end='')
	sys.stdout.flush()
	vFile = open(nomeDoArquivo,'a')
	vFile.write("\n-- TABELA ATENDENTE\n\n")

	global key_atendente

	key_atendente = gerador.numerosDistintos(qtd_atendente, 1, qtd_pessoa)
	idposto = gerador.numerosAleatorios(qtd_atendente, 1, qtd_posto)

	for i in range(0, qtd_atendente):
		campos = ["idpessoa","numeroregistro","idposto"]
		tipos = ["int", "char", "int"]
		valores = [key_atendente[i], str(i+1), idposto[i]]
		vFile.write(gerador.sql_insert("atendente", campos, tipos, valores) + "\n")
	#end
	vFile.close()
	print("concluido!")
#end

# --------------------------------------------------
def tabelaBairro():
	print("criando Bairro... ", end='')
	sys.stdout.flush()
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
	print("concluido!")
#end

# --------------------------------------------------
def tabelaDependente():
	print("criando Dependente... ", end='')
	sys.stdout.flush()
	vFile = open(nomeDoArquivo,'a')
	vFile.write("\n-- TABELA DEPENDENTE\n\n")

	idpessoa = gerador.numerosDistintos(qtd_depedente, 1, qtd_pessoa)
	idtitular = gerador.numerosAleatoriosFrom(key_titular, qtd_depedente)

	for i in range(0, qtd_depedente):
		campos = ["idpessoa","idtitular"]
		tipos = ["int", "int"]
		valores = [idpessoa[i], idtitular[i]]
		vFile.write(gerador.sql_insert("dependente", campos, tipos, valores) + "\n")
	#end
	vFile.close()
	print("concluido!")
#end

# --------------------------------------------------
def tabelaEstado():
	print("criando Estado... ", end='')
	sys.stdout.flush()
	vFile = open(nomeDoArquivo,'a')
	vFile.write("\n-- TABELA ESTADO\n\n")
	
	campos = ["idestado", "nome"]
	tipos = ["int", "char"]
	valores = [1, "Espírito Santo"]
	vFile.write(gerador.sql_insert("estado", campos, tipos, valores) + "\n")
	
	vFile.close()
	print("concluido!")
#end

# --------------------------------------------------
def tabelaLaboratorio():
	print("criando Laboratorio... ", end='')
	sys.stdout.flush()
	vFile = open("lst_labs.txt",'r')
	lstLabs = []
	linha = vFile.readline()
	while(linha != ""):
		if(linha[-1] == '\n'):
			linha = linha[:-1]
		#end
		lstLabs.append(linha)
		linha = vFile.readline()
	#end
	vFile.close()

	vFile = open(nomeDoArquivo,'a')
	vFile.write("\n-- TABELA LABORATORIO\n\n")
	for i in range(0,len(lstLabs)):
		campos = ["idlaboratorio", "nome"]
		tipos = ["int", "char"]
		valores = [i+1, lstLabs[i]]
		vFile.write(gerador.sql_insert("laboratorio", campos, tipos, valores) + "\n")
	#end
	vFile.close()
	print("concluido!")
#end

# --------------------------------------------------
def tabelaMedicamento():
	print("criando Medicamento... ", end='')
	sys.stdout.flush()
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
	print("concluido!")
#end

# --------------------------------------------------
def tabelaMedicamentoLaboratorio():
	print("criando Medicamento_Laboratorio... ", end='')
	sys.stdout.flush()
	vFile = open(nomeDoArquivo,'a')
	vFile.write("\n-- TABELA MEDICAMENTO_LABORATORIO\n\n")

	val = gerador.tuplasDistintas(qtd_medicamento_laboratorio, 1, qtd_medicamento, 1, qtd_medicamento_laboratorio)

	for i in range(0, qtd_medicamento_laboratorio):
		campos = ["idmedicamento", "idlaboratorio"]
		tipos = ["int", "int"]
		valores = [val[i][0], val[i][1]]
		vFile.write(gerador.sql_insert("medicamento_laboratorio", campos, tipos, valores) + "\n")
	#end
	vFile.close()
	print("concluido!")
#end

# --------------------------------------------------
def tabelaMedicamentoPosto():
	print("criando Medicamento_Posto... ", end='')
	sys.stdout.flush()
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
	print("concluido!")
#end

# --------------------------------------------------
def tabelaMunicipio():
	print("criando Municipio... ", end='')
	sys.stdout.flush()
	vFile = open(nomeDoArquivo,'a')
	vFile.write("\n-- TABELA MUNICIPIO\n\n")
	
	campos = ["idmunicipio", "nome", "idestado"]
	tipos = ["int", "char", "int"]
	valores = [1, "Fundão", 1]
	vFile.write(gerador.sql_insert("municipio", campos, tipos, valores) + "\n")
	
	vFile.close()
	print("concluido!")
#end

# --------------------------------------------------
def tabelaPessoa():
	print("criando Pessoa... ", end='')
	sys.stdout.flush()
	vFile = open(nomeDoArquivo,'a')
	vFile.write("\n-- TABELA PESSOA\n\n")

	nome = gerador.nome(qtd_pessoa)
	data = gerador.timestamp(qtd_pessoa, 1950, 2018)
	#cpf = gerador.cpf(qtd_pessoa)
	#rg = gerador.rg(qtd_pessoa)

	for i in range(0, qtd_pessoa):
		campos = ["idpessoa", "nome", "datanascimento", "cpf", "sexo", "rg"]
		tipos = ["int", "char", "time", "char", "int", "char"]
		valores = [i+1, nome[i], data[i], str(i+1), gerador.definirSexo(nome[i]), str(i+1)]
		vFile.write(gerador.sql_insert("pessoa", campos, tipos, valores) + "\n")
	#end
	vFile.close()
	print("concluido!")
#end

# --------------------------------------------------
def tabelaPosto():
	print("criando Posto... ", end='')
	sys.stdout.flush()
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
	print("concluido!")
#end

# --------------------------------------------------
def tabelaRecebimento():
	print("criando Recebimento... ", end='')
	sys.stdout.flush()
	vFile = open(nomeDoArquivo,'a')
	vFile.write("\n-- TABELA RECEBIMENTO\n\n")
	

	cpo4 = gerador.numerosAleatoriosFrom(key_atendente, qtd_recebimento)
	cpo5 = gerador.numerosAleatorios(qtd_recebimento, 1, qtd_medicamento_posto) # TODO conferir?
	
	for i in range(0, qtd_recebimento):
		cpo1 = randint(1,10)
		cpo2 = gerador.timestamp(1, 2014, 2018)[0]
		cpo3 = randint(1,qtd_pessoa)
		

		campos = ["idrecebimento","quantidademedicamentos","data_hora","idpessoa","idatendente","idmedicamentoposto"]
		tipos = ["int", "int", "time", "int", "int", "int"]
		valores = [i+1, cpo1, cpo2, cpo3, cpo4[i], cpo5[i]]
		vFile.write(gerador.sql_insert("recebimento", campos, tipos, valores) + "\n")
	#end
	vFile.close()
	print("concluido!")
#end

# --------------------------------------------------
def tabelaRegistroMedicamento():
	print("criando Registro_Medicamento... ", end='')
	sys.stdout.flush()
	vFile = open(nomeDoArquivo,'a')
	vFile.write("\n-- TABELA REGISTRO_MEDICAMENTO\n\n")
	
	cpo1 = gerador.numerosAleatorios(qtd_registro_medicamento, 1, 20)
	cpo2 = gerador.timestamp(qtd_registro_medicamento, 2014, 2018)
	cpo3 = gerador.numerosAleatoriosFrom(key_atendente, qtd_registro_medicamento)
	cpo4 = gerador.numerosAleatorios(qtd_registro_medicamento, 1, qtd_medicamento_posto)

	for i in range(0, qtd_registro_medicamento):
		campos = ["idregistromedicamento","quantidade","data_hora","idatendente","idmedicamentoposto"]
		tipos = ["int", "int", "time", "int", "int"]
		valores = [i+1, cpo1[i], cpo2[i], cpo3[i], cpo4[i]]
		vFile.write(gerador.sql_insert("registro_medicamento", campos, tipos, valores) + "\n")
	#end
	vFile.close()
	print("concluido!")
#end

# --------------------------------------------------
def tabelaSolicitacao():
	print("criando Solicitacao... ", end='')
	sys.stdout.flush()
	vFile = open(nomeDoArquivo,'a')
	vFile.write("\n-- TABELA SOLICITACAO\n\n")
	
	cpo1 = gerador.timestamp(qtd_solicitacao, 2014, 2018)
	cpo2 = gerador.numerosAleatorios(qtd_solicitacao, 1, 20)
	cpo3 = gerador.numerosAleatorios(qtd_solicitacao, 1, 2)
	cpo4 = gerador.numerosAleatoriosFrom(key_titular, qtd_solicitacao)
	cpo5 = gerador.numerosAleatorios(qtd_solicitacao, 1, qtd_medicamento_posto)

	for i in range(0, qtd_solicitacao):
		campos = ["idsolicitacao","data_hora","quantidademedicamento","estadosolicitacao","idtitular","idmedicamentoposto"]
		tipos = ["int", "time", "int", "int", "int", "int"]
		valores = [i+1, cpo1[i], cpo2[i], cpo3[i], cpo4[i], cpo5[i]]
		vFile.write(gerador.sql_insert("solicitacao", campos, tipos, valores) + "\n")
	#end
	vFile.close()
	print("concluido!")
#end

# --------------------------------------------------
def tabelaTitular():
	print("criando Titular... ", end='')
	sys.stdout.flush()
	vFile = open(nomeDoArquivo,'a')
	vFile.write("\n-- TABELA TITULAR\n\n")
	
	global key_titular

	key_titular = gerador.numerosDistintos(qtd_titular, 1, qtd_pessoa)

	for i in range(0, qtd_titular):
		campos = ["idpessoa","numerosus"]
		tipos = ["int", "int"]
		valores = [key_titular[i], (i+10000)]
		vFile.write(gerador.sql_insert("titular", campos, tipos, valores) + "\n")
	#end
	vFile.close()
	print("concluido!")
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

	tabelaEstado()
	tabelaMunicipio()
	tabelaBairro()
	tabelaLaboratorio()
	tabelaMedicamento()
	tabelaPessoa()
	tabelaPosto()
	tabelaAtendente()
	tabelaTitular()
	tabelaDependente()
	tabelaMedicamentoLaboratorio()
	tabelaMedicamentoPosto()
	tabelaRegistroMedicamento()
	tabelaSolicitacao()
	tabelaRecebimento()
	
	print("Arquivo gerado!")
#end

# --------------------------------------------------
if __name__ == "__main__":
	main()
#end
