def calcular_coeficiente_binomial(n, k, dp):
    if k > n:
        return 0
    if k == 0 or k == n:
        return 1
    if dp[n][k] != -1:
        return dp[n][k]
    dp[n][k] = calcular_coeficiente_binomial(n - 1, k - 1, dp) + calcular_coeficiente_binomial(n - 1, k, dp)
    return dp[n][k]

def calcular_formula_especifica(n):
    
    dp = [[-1] * (n + 1) for _ in range(n + 1)]


    c3 = calcular_coeficiente_binomial(n, 3, dp)
    c6 = calcular_coeficiente_binomial(n, 6, dp)
    c9 = calcular_coeficiente_binomial(n, 9, dp)
    c12 = calcular_coeficiente_binomial(n, 12, dp)
    c15 = calcular_coeficiente_binomial(n, 15, dp)
    c18 = calcular_coeficiente_binomial(n, 18, dp)


    resultado = n - c3 + c6 - c9 + c12 - c15 + c18

    print(f"Coeficientes binomiales para n = {n}:")
    print(f"C3  = {c3}")
    print(f"C6  = {c6}")
    print(f"C9  = {c9}")
    print(f"C12 = {c12}")
    print(f"C15 = {c15}")
    print(f"C18 = {c18}")


    print(f"Resultado para n = {n}: {resultado}")

n = 26
calcular_formula_especifica(n)
