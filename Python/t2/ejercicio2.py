def sd_par(n):
    if n == 0:
        return 0
    digit = n % 10
    if digit % 2 == 0:
        return digit + sd_par(n // 10)
    else:
        return sd_par(n // 10)

print(sd_par(123456789))  # Solo se suma digitos pares (20)
print(sd_par(13579))      # No hay dígitos pares, resultado es 0
print(sd_par(246810))     # Todos los dígitos son pares, resultado debe ser la suma de todos 
