

def main():
	vfile = open("lst_labs.txt",'r')
	txt = vfile.read()
	vfile.close()
	vfile = open("lst_labs.txt",'w')
	lst = txt.split("\n")
	txt = ""
	for linha in lst:
		if(linha[:3] != "SAC" and linha[:4] != "Site" and linha[:6] != "E-mail"):
			txt += linha + '\n'
		#end
	#end
	vfile.write(txt)
	vfile.close()
	return 0
#end

if __name__ == "__main__":
	main()
#end