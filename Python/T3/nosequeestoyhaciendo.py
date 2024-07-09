def fibonacci_series(n):
    fib_series = [0, 1]
    for i in range(2, n):
        fib_series.append(fib_series[-1] + fib_series[-2])
    return fib_series

def display_fibonacci_with_legend(fib_series):
    multiples_of_3_count = 0
    total_terms = len(fib_series)
    
    for i, num in enumerate(fib_series):
        if num % 3 == 0:
            print(f"{num} T", end="\t")
            multiples_of_3_count += 1
        else:
            print(num, end="\t")
        
        if (i + 1) % 5 == 0:
            print()
    
    print(f"\ntotal multiplos de 3: {multiples_of_3_count} {multiples_of_3_count / total_terms * 100:.1f}%")

def main():
    while True:
        try:
            n = int(input("Ingrese el número de términos para la serie Fibonacci: "))
            if n <= 0:
                raise ValueError("El número de términos debe ser positivo.")
            
            fib_series = fibonacci_series(n)
            print("Serie Fibonacci:")
            display_fibonacci_with_legend(fib_series)
            
            choice = input("\n¿Desea continuar? (s/n): ").strip().lower()
            if choice != 's':
                break
        
        except ValueError as ve:
            print(f"Error: {ve}")
        except Exception as e:
            print(f"Error inesperado: {e}")

if __name__ == "__main__":
    main()
