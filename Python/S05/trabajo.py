import random

def menuPrincipal():
    mnu = 'Menu principal'
    mnu += '\n-------------------'
    mnu += '\n [1] Generar Lista'
    mnu += '\n [2] Mostrar Lista'
    mnu += '\n [3] Sumar REP'
    mnu += '\n [4] Sumar REC'
    mnu += '\n [5] Sumar REC DV'
    mnu += '\n [6] Mayor REC DV'
    mnu += '\n [7] Menu Operaciones'
    mnu += '\n [0] Salir'
    mnu += '\nSeleccione Opcion:'
    return mnu
    

def generarLista(Lista):
    num = int(input('ingresar cantidad:'))
    for i in range(0, num):
        valx = random.randint(0, 20)
        lista.append(valx)
        
def mostratLista(lista):
    for i in range(0, len(lista)):
        if(i % 7 == 0):
            print()
        print(str(lista[i]).rjust(10, ' '), end='')
        
def sumarREP(lista):
    suma = 0
    for elemento in lista:
        suma += elemento
    return suma

#------------------------------------------
mnu = menuPrincipal()
opc = 1
while (opc!=0):
    opc = int(input(mnu))
    
    if(opc==1):
        lista = []
        generarLista(lista)
    elif(opc==2):
        mostratLista(lista)
    elif(opc==3):
        rpta = sumarREP(lista)
        print('sumar(REP):',rpta)
    elif(opc==4):
        pass
    elif(opc==5):
        pass
    elif(opc==6):
        pass
    elif(opc==7):
        pass
    elif(opc==0):
        print('Hasta pronto!')
    else:
        print('\nOpcion invalida')