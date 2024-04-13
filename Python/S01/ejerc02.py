frase = input("Frase: ")
palabra = input("Palabra: ")

idx = 0
resp = ""
encontrado = False
for i in  range(0, len(frase)):
    if (frase[i]==palabra[idx]):
        resp += frase[i]
        idx+=1
        if(resp == palabra):
            encontrado = True
            break
    else:
        resp = ""
        idx = 0
        
if(encontrado):
    print("encontrado")
else:
    print("no encontrado")

#Buscar y conteo, deberia fusionar

encuentra = frase.find(palabra)
if (encuentra < 0):
    print("encontrado ", encuentra, " veces")
else:
    print("no encontrado")