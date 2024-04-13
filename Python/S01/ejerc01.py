#Pruebas sobre listas; cantidad, maximos, minimos, etc

lista=[]

n=int(input("Cantidad de elementos: "))

for i in range(0, n):
    lista.append(int(input("Numero: ")))
    
#1 imprimir lista
for i in range(0, n):    
    print(lista[i])

#2 buscar
Busqueda = int(input("valor a buscar: "))
encontrado = False
for i in range(0, n):
    if (lista[i] == Busqueda):
        encontrado = True
        break
if (encontrado):
    print("Encontrado")
else:
    print("no encontrado")
    
#3 contar
contar = 0
for i in range(0,n):
    if(lista[i] == Busqueda):
        contar += 1
if(contar >= 0):
    print("encontrado", contar," veces")
else:
    print("No encontrado")
    
#4 maximo
maximo = max(lista)
print ("el valor mas alto es ", maximo)

#5 minimo
menor = min(lista)
print ("el valor mas bajo es ", menor)

#6 valor mas repetido y cuantas veces
frecuencia = {}
for i in lista:
    if i in frecuencia:
        frecuencia[i] += 1
    else:
        frecuencia[i] = 1

repetido = None
repeticiones = 0

for valor, rep in frecuencia.items():
    if rep > repeticiones:
        repetido = valor
        repeticiones = rep

print("El valor que más se repite es:", valor, "se repite ", repeticiones, " veces")

#7 verificar si hay valores repetidos
if len(lista) != len(set(lista)):
    print("La lista tiene valores repetidos.")
else:
    print("La lista no tiene valores repetidos y todos son únicos.")
