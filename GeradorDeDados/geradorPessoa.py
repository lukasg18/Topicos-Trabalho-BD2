# --------------------------------------------------
# Cabecalho 
# --------------------------------------------------

from random import randint
from geradorMainLib import gerarNome
from geradorMainLib import gerarDataNasc
from geradorMainLib import gerarCpf
from sys import argv

# --------------------------------------------------
def main():
	vFileSql = open("sql_nomes.txt",'w')

	quantidade = 100
	if(len(argv) > 1):
		quantidade = int(argv[1])
	#end

	print("processando...")

	nomes = gerarNome(quantidade)
	datas = gerarDataNasc(quantidade)
	cpfs = gerarCpf(quantidade)

	for i in range(0,quantidade):
		vFileSql.write("INSERT INTO Pessoa(nome, dataNascimento, cpf) VALUES (\'" + nomes[i] + "\', \'" + datas[i] + "\', \'" + cpfs[i] +"\');\n")
	#end

	vFileSql.close()
	print("arquivo gerado!")
#end

# --------------------------------------------------
if __name__ == "__main__":
	main()
#end