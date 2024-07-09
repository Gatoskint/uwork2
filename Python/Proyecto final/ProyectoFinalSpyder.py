import datetime

class Cliente:
    def __init__(self, nombre, dni):
        self.nombre = nombre
        self.dni = dni
        self.cuentas = {}

    def agregar_cuenta(self, cuenta):
        self.cuentas[cuenta.numero] = cuenta

class Cuenta:
    def __init__(self, numero, tipo):
        self.numero = numero
        self.tipo = tipo
        self.saldo = 0
        self.movimientos = []

    def registrar_movimiento(self, tipo, monto):
        fecha = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")
        self.movimientos.append((fecha, tipo, monto))

class Cajero:
    def __init__(self, ubicacion):
        self.ubicacion = ubicacion
        self.dinero = {200: 0, 100: 0, 50: 0, 20: 0}

    def actualizar_dinero(self, billetes):
        for denominacion, cantidad in billetes.items():
            if denominacion in self.dinero:
                self.dinero[denominacion] += cantidad

class SistemaCajero:
    def __init__(self):
        self.clientes = {}
        self.cajeros = {}

    def agregar_cliente(self, nombre, dni):
        if dni in self.clientes:
            print("Cliente ya registrado.")
        else:
            self.clientes[dni] = Cliente(nombre, dni)
            print("Cliente agregado exitosamente.")
            numero_cuenta = input("Ingrese el número de cuenta: ")
            tipo_cuenta = input("Ingrese el tipo de cuenta (ahorros, corriente): ")
            cuenta = Cuenta(numero_cuenta, tipo_cuenta)
            self.clientes[dni].agregar_cuenta(cuenta)
            print("Cuenta bancaria agregada exitosamente.")

    def agregar_cajero(self, ubicacion):
        if ubicacion in self.cajeros:
            print("Cajero ya registrado en esta ubicación.")
        else:
            self.cajeros[ubicacion] = Cajero(ubicacion)
            print("Cajero agregado exitosamente.")

    def validar_cliente(self, dni, nombre):
        if dni in self.clientes and self.clientes[dni].nombre == nombre:
            return self.clientes[dni]
        else:
            return None

    def mostrar_menu(self):
        print("\n1. Crear cliente")
        print("2. Agregar cajero")
        print("3. Iniciar sesión")
        print("4. Salir")
        opcion = input("Seleccione una opción: ")
        return opcion

    def mostrar_sub_menu(self):
        print("\n1. Consultar saldo")
        print("2. Retirar dinero")
        print("3. Depositar dinero")
        print("4. Transferir dinero")
        print("5. Pagar servicios")
        print("6. Consultar movimientos")
        print("7. Cerrar sesión")
        opcion = input("Seleccione una opción: ")
        return opcion

    def consultar_saldo(self, cuenta):
        print(f"Saldo actual: {cuenta.saldo} soles")

    def retirar_dinero(self, cuenta, cajero, monto):
        if monto > cuenta.saldo:
            print("Saldo insuficiente en la cuenta.")
            return
        billetes = self.desglosar_dinero(cajero, monto)
        if billetes is None:
            print("No hay suficientes billetes en el cajero.")
            return
        cuenta.saldo -= monto
        cuenta.registrar_movimiento("Retiro", -monto)
        print("Retiro exitoso.")
        print("Desglose de billetes:")
        for denominacion, cantidad in billetes.items():
            print(f"{denominacion} soles: {cantidad}")

    def desglosar_dinero(self, cajero, monto):
        billetes = {}
        for denominacion in sorted(cajero.dinero.keys(), reverse=True):
            if monto == 0:
                break
            cantidad = min(monto // denominacion, cajero.dinero[denominacion])
            if cantidad > 0:
                billetes[denominacion] = cantidad
                monto -= cantidad * denominacion
        return billetes if monto == 0 else None

    def depositar_dinero(self, cuenta, cajero, billetes):
        monto = sum(denominacion * cantidad for denominacion, cantidad in billetes.items())
        cuenta.saldo += monto
        cuenta.registrar_movimiento("Depósito", monto)
        cajero.actualizar_dinero(billetes)
        print("Depósito exitoso.")

    def transferir_dinero(self, cuenta_origen, cuenta_destino, monto):
        if monto > cuenta_origen.saldo:
            print("Saldo insuficiente en la cuenta origen.")
            return
        cuenta_origen.saldo -= monto
        cuenta_destino.saldo += monto
        cuenta_origen.registrar_movimiento("Transferencia salida", -monto)
        cuenta_destino.registrar_movimiento("Transferencia entrada", monto)
        print("Transferencia exitosa.")

    def pagar_servicios(self, cuenta, monto):
        if monto > cuenta.saldo:
            print("Saldo insuficiente en la cuenta.")
            return
        cuenta.saldo -= monto
        cuenta.registrar_movimiento("Pago de servicios", -monto)
        print("Pago de servicios exitoso.")

    def consultar_movimientos(self, cuenta):
        print("Movimientos:")
        for movimiento in cuenta.movimientos:
            fecha, tipo, monto = movimiento
            color = "\033[91m" if monto < 0 else "\033[94m"
            print(f"{color}{fecha} - {tipo}: {monto} soles\033[0m")

def main():
    sistema = SistemaCajero()
    while True:
        opcion = sistema.mostrar_menu()
        if opcion == "1":
            nombre = input("Ingrese su nombre: ")
            dni = input("Ingrese su DNI: ")
            sistema.agregar_cliente(nombre, dni)
        elif opcion == "2":
            ubicacion = input("Ingrese la ubicación del cajero: ")
            sistema.agregar_cajero(ubicacion)
        elif opcion == "3":
            dni = input("Ingrese su DNI: ")
            nombre = input("Ingrese su nombre: ")
            cliente = sistema.validar_cliente(dni, nombre)
            if cliente:
                while True:
                    sub_opcion = sistema.mostrar_sub_menu()
                    if sub_opcion == "1":
                        cuenta_numero = input("Ingrese el número de cuenta: ")
                        if cuenta_numero in cliente.cuentas:
                            sistema.consultar_saldo(cliente.cuentas[cuenta_numero])
                        else:
                            print("Cuenta no encontrada.")
                    elif sub_opcion == "2":
                        cuenta_numero = input("Ingrese el número de cuenta: ")
                        ubicacion = input("Ingrese la ubicación del cajero: ")
                        if cuenta_numero in cliente.cuentas and ubicacion in sistema.cajeros:
                            monto = int(input("Ingrese el monto a retirar: "))
                            sistema.retirar_dinero(cliente.cuentas[cuenta_numero], sistema.cajeros[ubicacion], monto)
                        else:
                            print("Cuenta o cajero no encontrado.")
                    elif sub_opcion == "3":
                        cuenta_numero = input("Ingrese el número de cuenta: ")
                        ubicacion = input("Ingrese la ubicación del cajero: ")
                        if cuenta_numero in cliente.cuentas and ubicacion in sistema.cajeros:
                            billetes = {
                                200: int(input("Ingrese cantidad de billetes de 200: ")),
                                100: int(input("Ingrese cantidad de billetes de 100: ")),
                                50: int(input("Ingrese cantidad de billetes de 50: ")),
                                20: int(input("Ingrese cantidad de billetes de 20: "))
                            }
                            sistema.depositar_dinero(cliente.cuentas[cuenta_numero], sistema.cajeros[ubicacion], billetes)
                        else:
                            print("Cuenta o cajero no encontrado.")
                    elif sub_opcion == "4":
                        cuenta_origen = input("Ingrese el número de cuenta origen: ")
                        cuenta_destino = input("Ingrese el número de cuenta destino: ")
                        if cuenta_origen in cliente.cuentas and cuenta_destino in cliente.cuentas:
                            monto = int(input("Ingrese el monto a transferir: "))
                            sistema.transferir_dinero(cliente.cuentas[cuenta_origen], cliente.cuentas[cuenta_destino], monto)
                        else:
                            print("Cuentas no encontradas.")
                    elif sub_opcion == "5":
                        cuenta_numero = input("Ingrese el número de cuenta: ")
                        if cuenta_numero in cliente.cuentas:
                            monto = int(input("Ingrese el monto a pagar: "))
                            sistema.pagar_servicios(cliente.cuentas[cuenta_numero], monto)
                        else:
                            print("Cuenta no encontrada.")
                    elif sub_opcion == "6":
                        cuenta_numero = input("Ingrese el número de cuenta: ")
                        if cuenta_numero in cliente.cuentas:
                            sistema.consultar_movimientos(cliente.cuentas[cuenta_numero])
                        else:
                            print("Cuenta no encontrada.")
                    elif sub_opcion == "7":
                        break
                    else:
                        print("Opción inválida.")
            else:
                print("DNI o nombre incorrectos.")
        elif opcion == "4":
            print("Gracias por usar el sistema de cajero automático.")
            break
        else:
            print("Opción inválida.")

if __name__ == "__main__":
    main()
