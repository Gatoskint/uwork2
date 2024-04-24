radio = float(input("Ingresa el radio del cilindro en cm: "))
altura = float(input("Ingresa la altura del cilindro en cm: "))

area_base = 3.1416 * radio ** 2
area_lateral = 2 * 3.1416 * radio * altura
area_total = 2 * area_base + area_lateral

volumen = 3.1416 * radio ** 2 * altura

print("Resultados:")
print("Área del cilindro: {:.2f} cm²".format(area_total))
print("Volumen del cilindro: {:.2f} cm³".format(volumen))
print("Variables utilizadas: radio (r) = {}, altura (h) = {}".format(radio, altura))