def sdITE():
    n = int(input("Ingrese un número entero: "))
    suma = 0
    while n != 0:
        suma += n % 10
        n //= 10
    return suma


result = sdITE()
print("La suma de los dígitos es:", result)
