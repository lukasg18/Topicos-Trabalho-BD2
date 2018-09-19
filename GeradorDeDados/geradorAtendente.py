# --------------------------------------------------
# Cabecalho 
# --------------------------------------------------

from random import randint
from geradorMainLib import gerarNome
from geradorMainLib import gerarDataNasc
from geradorMainLib import gerarCpf
from geradorMainLib import gerarRg
from sys import argv

# --------------------------------------------------
def main():
	vFileSql = open("sql_atendentes.txt",'w')

	quantidade = 100
	if(len(argv) > 1):
		quantidade = int(argv[1])
	#end

	print("processando...")

	nomes = gerarNome(quantidade)
	datas = gerarDataNasc(quantidade)
	cpfs = gerarCpf(quantidade)
	rgs = gerarRg(quantidade)

	for i in range(0,quantidade):
		vFileSql.write("INSERT INTO Atendente(nome, dataNascimento, cpf, numero_registro, rg) VALUES (\'" + nomes[i] + "\', \'" + datas[i] + "\', \'" + cpfs[i] + "\', " + str(randint(100,999)) + "\', " + rgs[i] + "\');\n")
	#end

	vFileSql.close()
	print("arquivo gerado!")
#end

# --------------------------------------------------
if __name__ == "__main__":
	main()
#end