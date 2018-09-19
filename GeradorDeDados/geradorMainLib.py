# --------------------------------------------------
# Cabecalho 
# --------------------------------------------------

from random import randint
from sys import argv

# --------------------------------------------------
def gerarCpf(num):
	lstCpfs = []
	for i in range(0, num):
		parte1 = randint(100000000,999999999)
		parte2 = randint(10,99)
		lstCpfs.append(str(parte1) + '-' + str(parte2))
	#end
	return lstCpfs
#end

# --------------------------------------------------
def gerarDataNasc(num):
	lstDatas = []
	for i in range(0, num):
		dia = randint(1,30)
		mes = randint(1,12)
		ano = randint(1900,2000)
		if(dia < 10):
			dia = '0' + str(dia)
		#end
		if(mes < 10):
			mes = '0' + str(mes)
		#end
		lstDatas.append(str(ano) + '-' + str(mes) + '-' + str(dia))
	#end
	return lstDatas
#end

# --------------------------------------------------
def gerarNome(num):
	vFileNomes = open("nomes.txt",'r')
	vFileSobrenomes = open("sobrenomes.txt",'r')
	
	lstNomes = vFileNomes.read().split("\n")
	lstSobrenomes = vFileSobrenomes.read().split("\n")
	lstNomesCompletos = []
	
	for i in range(0, num):
		tam = len(lstNomes)
		nome = ""
		if(tam > 0):
			nome = lstNomes[randint(0, tam-1)]
		#end
		tam = len(lstSobrenomes)
		if(tam > 0):
			for i in range(0, randint(1,3)):
				nome += " "
				nome += lstSobrenomes[randint(0, tam-1)]
			#end
		#end
		lstNomesCompletos.append(nome)
	#end

	vFileNomes.close()
	vFileSobrenomes.close()

	return lstNomesCompletos
#end

# --------------------------------------------------
def gerarRg(num):
	lstRgs = []
	for i in range(0, num):
		parte1 = randint(1000,9999)
		parte2 = randint(100,999)
		lstRgs.append(str(parte1) + '.' + str(parte2) + "-ES")
	#end
	return lstRgs
#end
