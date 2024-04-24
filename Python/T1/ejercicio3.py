class Estudiante:
    def __init__(self, codigo, nombre, T1, T2, EP, EF):
        self.codigo = codigo
        self.nombre = nombre
        self.T1 = T1
        self.T2 = T2
        self.EP = EP
        self.EF = EF
        self.promedio = self.calcular_promedio()

    def calcular_promedio(self):
        promedio = (self.T1 * 0.15) + (self.T2 * 0.15) + (self.EP * 0.30) + (self.EF * 0.40)
        return promedio
estudiantes = {}
def ordenar(estudiantes):
    return sorted(estudiantes.values(), key=lambda x: x.nombre)

def repeticion(estudiantes):
    notas = [estudiante.EF for estudiante in estudiantes.values()]
    return max(set(notas), key=notas.count)

def promedio(estudiantes):
    notas = [estudiante.EF for estudiante in estudiantes.values()]
    return sum(notas) / len(notas)

def ingresar(estudiantes):
    codigo = input("Ingrese el código del estudiante ('0' para dejar de ingresar): ")
    if codigo.lower() == '0':
        return False
    if codigo in estudiantes:
        print("Error = codigo ya existente")
        return True
    nombre = input("Ingrese el nombre del estudiante: ")
    T1 = float(input("Ingrese la nota del T1: "))
    T2 = float(input("Ingrese la nota del T2: "))
    EP = float(input("Ingrese la nota del EP: "))
    EF = float(input("Ingrese la nota del EF: "))
    estudiantes[codigo] = Estudiante(codigo, nombre, T1, T2, EP, EF)
    print("Registrado con exito")
    return True

while ingresar(estudiantes):
    pass

estudiantes_ordenados = ordenar(estudiantes)
print("\nInformación de estudiantes ordenados por nombre:")
for estudiante in estudiantes_ordenados:
    print("Código:  Nombre:  T1:  T2:  EP:  EF:  Promedio:")
    print(f"{estudiante.codigo}  {estudiante.nombre}   {estudiante.T1}   {estudiante.T2}   {estudiante.EP},  {estudiante.EF}, {estudiante.promedio}")
repeticion_ef = repeticion(estudiantes)
print("\nNota que más se repite en EF:", repeticion_ef)
promedio_total = promedio(estudiantes)
print("Nota promedio total de todos los estudiantes:", promedio_total)
