def contar_palabra(frase, palabra):
    contador = 0
    for i in range(len(frase)):
        if frase[i:i+len(palabra)] == palabra:
            contador += 1
    return contador

frase = input("Ingresa una frase: ")
palabra = input("Ingresa una palabra para contar en la frase: ")
frase = frase.lower()
palabra = palabra.lower()

ocurrencias = contar_palabra(frase, palabra)

print("La palabra '{}' aparece {} veces en la frase.".format(palabra, ocurrencias))