#Clases


class Estudiante:
    def __init__(self,nombre="", nota=0):
        self.nombre = nombre
        self.nota = nota
        
lista = []
n=int(input("cantidad de estudiantes: "))

for i in range (0,n):
    est = Estudiante(
        input("Nombre: "),
        int(input("Nota: "))
        )
    
    
    for e in lista:
        if (e.nombre == est.nombre):
            print("Ya se registro")
    
    lista.append(est)
    
#listar
for i in range(0, n):
    EST = lista[i]
    print(est.nombre, "\t", est.nota)    