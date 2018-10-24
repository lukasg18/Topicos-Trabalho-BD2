# --------------------------------------------------
# Cabecalho 
# --------------------------------------------------

from random import randint
from sys import argv

# --------------------------------------------------
def cpf(num):
	lstCpfs = []
	for i in range(0, num):
		parte1 = randint(100000000,999999999)
		parte2 = randint(10,99)
		lstCpfs.append(str(parte1) + '-' + str(parte2))
	#end
	return lstCpfs
#end

# --------------------------------------------------
def nome(num):
	vFileNomes = open("lst_nomes.txt",'r', encoding = "ISO-8859-1")
	vFileSobrenomes = open("lst_sobrenomes.txt",'r', encoding = "ISO-8859-1")
	
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
def rg(num):
	lstRgs = []
	for i in range(0, num):
		lstRgs.append(randint(1000000,9999999))
	#end
	return lstRgs
#end

# --------------------------------------------------
def rg_string(num):
	lstRgs = []
	for i in range(0, num):
		parte1 = randint(1000,9999)
		parte2 = randint(100,999)
		lstRgs.append(str(parte1) + '.' + str(parte2) + "-ES")
	#end
	return lstRgs
#end

# --------------------------------------------------
def gibberish(num):
	txt = ""
	caract = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
	caleng = len(caract)-1
	for i in range(0, num):
		tam = randint(3,8)
		tam -= 1
		for j in range(0,tam):
			txt += caract[randint(0,caleng)]
		#end
		txt += " "
	#end
	txt = txt[:-1]
	return txt
#end

# --------------------------------------------------
def definirSexo(str1):
	str2 = str1.split(" ")
	ch = str2[0][-1]
	if(ch == 'a'):
		return '0'
	if(ch == 'o'):
		return '1'
	return str(randint(0,1))
#end

# --------------------------------------------------
def numerosDistintos(qtd, min, max):
	lst = []
	rng = list(range(min,max+1))
	for i in range(qtd):
		num = randint(0, len(rng)-1)
		lst.append(rng[num])
		del rng[num]
	#end
	return lst
#end

# --------------------------------------------------
def tuplasDistintas(qtd, min1, max1, min2, max2):
	lst = []
	i = 0
	while(i < qtd):
		num1 = randint(min1, max1)
		num2 = randint(min2, max2)
		if((num1, num2) not in lst):
			lst.append((num1,num2))
			i += 1
		#end
	#end
	return lst
#end

# --------------------------------------------------
def numerosDistintosFrom(valores, qtd):
	lst = []
	rng = valores[:] #TODO checar se isso eh necessario
	for i in range(qtd):
		num = randint(0, len(rng)-1)
		lst.append(rng[num])
		del rng[num]
	#end
	return lst
#end

# --------------------------------------------------
def numerosAleatorios(qtd, min, max):
	lst = []
	for i in range(qtd):
		lst.append(randint(min,max))
	#end
	return lst
#end

# --------------------------------------------------
def numerosAleatoriosFrom(valores, qtd):
	lst = []
	tam = len(valores)-1
	for i in range(qtd):
		lst.append( valores[randint(0, tam)] )
	#end
	return lst
#end

# --------------------------------------------------
def sql_insert(tabela, lstCampo, lstTipo, lstValor):
	sqltxt = "INSERT INTO " + tabela + "("
	
	for campo in lstCampo:
		sqltxt += campo + ', '
	#end
	sqltxt = sqltxt[:-2]
	
	sqltxt += ") VALUES("

	for i in range(len(lstCampo)):
		if(lstTipo[i] == 'char'):
			sqltxt += "\'" + lstValor[i] + "\'"
		elif(lstTipo[i] == 'int'):
			sqltxt += str(lstValor[i])
		elif(lstTipo[i] == "time"):
			sqltxt += "to_timestamp(\'" + lstValor[i] + "\', \'DD Mon YYYY\')" #TODO VERIFICAR SINTAXE
		else:
			sqltxt += "\'" + lstValor[i] + "\'"
		#end
		sqltxt += ', '
	#end
	sqltxt = sqltxt[:-2]
	sqltxt += ");"

	return sqltxt
#end

# --------------------------------------------------
def timestamp(qtd, ano_min, ano_max):
	def isLeapYear(ano):
		if ano%4==0 and ano%100!=0 or ano%400==0:
			return True
		else:
			return False
		#end
	#end
	
	def monthToString(mes):
		if(mes == 1): return "Jan"
		if(mes == 2): return "Feb"
		if(mes == 3): return "Mar"
		if(mes == 4): return "Apr"
		if(mes == 5): return "May"
		if(mes == 6): return "Jun"
		if(mes == 7): return "Jul"
		if(mes == 8): return "Aug"
		if(mes == 9): return "Sep"
		if(mes == 10): return "Oct"
		if(mes == 11): return "Nov"
		if(mes == 12): return "Dec"
		return "NULL"
	#end

	lst = []
	for i in range(0, qtd):
		ano = randint(ano_min, ano_max)
		mes = randint(1, 12)
		if(mes in [1,3,5,7,8,10,12]):
			dia = randint(1,31)
		elif(mes in [4,6,9,11]):
			dia = randint(1,30)
		elif(isLeapYear(ano)):
			dia = randint(1,29)
		else:
			dia = randint(1,28)
		#end
		lst.append(str(dia)+" "+monthToString(mes)+" "+str(ano))
	#end
	return lst
#end
