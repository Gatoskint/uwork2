# A
mesas = []

def registrar_mesa():
    numero_mesa = int(input("Ingrese el número de mesa: "))
    
    # Verificar si el número de mesa ya ha sido registrado previamente
    for mesa in mesas:
        if mesa["Numero de Mesa"] == numero_mesa:
            print("¡El número de mesa ya ha sido registrado!")
            return
    
    total_electores = int(input("Ingrese la cantidad total de electores: "))
    total_asistentes = int(input("Ingrese la cantidad total de asistentes: "))
    
    # Calcular el porcentaje de asistencia
    porcentaje_asistencia = (total_asistentes / total_electores) * 100
    
    # Agregar el registro de la mesa a la lista
    mesas.append({
        "Numero de Mesa": numero_mesa,
        "Total de Electores": total_electores,
        "Total de Asistentes": total_asistentes,
        "Porcentaje de Asistentes(%)": porcentaje_asistencia
    })

def mostrar_mesas():
    # Mostrar la lista de mesas
    print("Numero de Mesa   Total de electores   Total Asistentes   Porcentaje de Asistentes(%)")
    for mesa in mesas:
        print(f"{mesa['Numero de Mesa']:15} {mesa['Total de Electores']:20} {mesa['Total de Asistentes']:17} {mesa['Porcentaje de Asistentes(%)']:30.2f}")


# C)

def mesa_mayor_asistencia(mesas):
    if len(mesas) == 1:
        return mesas[0]
    else:
        max_mesa = mesa_mayor_asistencia(mesas[1:])
        return mesas[0] if mesas[0]["Porcentaje de Asistentes(%)"] > max_mesa["Porcentaje de Asistentes(%)"] else max_mesa

def mesa_menor_asistencia(mesas):
    if len(mesas) == 1:
        return mesas[0]
    else:
        min_mesa = mesa_menor_asistencia(mesas[1:])
        return mesas[0] if mesas[0]["Porcentaje de Asistentes(%)"] < min_mesa["Porcentaje de Asistentes(%)"] else min_mesa

def quicksort_porcentaje(mesas):
    if len(mesas) <= 1:
        return mesas
    else:
        pivot = mesas[0]
        menores = [m for m in mesas[1:] if m["Porcentaje de Asistentes(%)"] < pivot["Porcentaje de Asistentes(%)"]]
        mayores = [m for m in mesas[1:] if m["Porcentaje de Asistentes(%)"] >= pivot["Porcentaje de Asistentes(%)"]]
        return quicksort_porcentaje(menores) + [pivot] + quicksort_porcentaje(mayores)

# Fin del requerimiento C)

# Probando las funciones
if __name__ == "__main__":
    while True:
        print("\n-- Menú --")
        print("1. Registrar mesa")
        print("2. Mostrar mesas")
        print("3. Mesa con mayor asistencia")
        print("4. Mesa con menor asistencia")
        print("5. Ordenar mesas por porcentaje de asistencia (descendente)")
        print("6. Salir")
        opcion = input("Ingrese su opción: ")

        if opcion == "1":
            registrar_mesa()
        elif opcion == "2":
            mostrar_mesas()
        elif opcion == "3":
            mayor_asistencia = mesa_mayor_asistencia(mesas)
            print(f"Mesa con mayor asistencia: {mayor_asistencia['Numero de Mesa']} - Porcentaje: {mayor_asistencia['Porcentaje de Asistentes(%)']:.2f}%")
        elif opcion == "4":
            menor_asistencia = mesa_menor_asistencia(mesas)
            print(f"Mesa con menor asistencia: {menor_asistencia['Numero de Mesa']} - Porcentaje: {menor_asistencia['Porcentaje de Asistentes(%)']:.2f}%")
        elif opcion == "5":
            mesas_ordenadas = quicksort_porcentaje(mesas)
            print("Lista de mesas ordenadas por porcentaje de asistencia (descendente):")
            mostrar_mesas()
        elif opcion == "6":
            print("Saliendo...")
            break
        else:
            print("Opción no válida. Por favor, ingrese una opción válida.")
