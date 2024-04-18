#1
def ordenarBurbuja(lista,campo):
    n = len(lista)
    for i in range(n):
        for k in range(n-1):
            if (lista[k][campo] > lista[k+1][campo]):
                aux = lista[k]
                lista[k] = lista[k+1]
                lista[k+1] = aux

#2
def listar (lista):
    LINEA = 60
    print("-"*LINEA)
    print("Codigo".ljust(8,""), end=" ")
    print("nombre".ljust(30," "), end=" ")
    print("talla".rjust(8, " "), end=" ")
    print("peso".rjust(8, ""))
    print("-"*LINEA)
    
    for deportista in lista:
        print(deportista["codigo"].ljust(8, " "), end=" ")
        print(deportista["nombre"].ljust(30, " "), end=" ")
        print(str(deportista["talla"].rjust(8," "), end=" "))
        
        pesox = f"{deportista['peso']:2.f}"
        print(pesox.rjust(8, " "))
        
        
# ---------------------------
lista=[]
n = int(input("ingrese cantidad de deportistas: "))

for i in range (0, n):
    print("deportista ", (i+1), ":")
    
    deport={
        "codigo":input("codigo: ")
        "nom": input("nombre: ")
        "": input(": ")
        "": input(": ")}


ordernarBurbuja(lista,"nombre")
listar(lista)

ordenarBurbuja(lista, "talla")
listar(lista)    