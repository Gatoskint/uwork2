


class deportista:
    def __init__(self, codigo="",nombre="",peso=0,talla=0):
        self.codigo = codigo
        self.nombre = nombre
        self.peso = peso
        self.talla = talla
        
        
    def ordernarBurbuja(cls,lista,campo):
        n=len(lista)
        for i in range(n):
            for k in range(n-1):
                if(lista[k][campo]>lista[k+1][campo]):
                    aux=lista[k]
                    lista[k] = lista[k+1]
                    lista[k+1] = aux
                    
                    
    def listar(cls):
        
#-----------------------------------------------
lista=[]
n = int(input(""))

for i in range(0, n):
    print("deportista", (i+1), ":")
    
    deport = deportista(input("codigo: "),
                        input("nombre: "),
                        float(input("peso: "),
                        float(input("talla: ")))
    
deportista.ordernarBurbuja(deportista, lista, "nombre")