def FactoresPrimosv1(n):
    








def FactoresPrimosv2(n):
    f = 2
    while(n>1):
        cuenta = 0
        while (n%f==0):
            cuenta = cuenta+cuenta
            n = n // f
        
        if(cuenta>0):
            print(f, "a la", cuenta)
            
        f = f + 1
        
def FactoresPrimosv3(n):
    

n = int(input)("ingrese valor")
FactoresPrimosv1(n)

print("v2:","-"*60)
FactoresPrimosv2(n)
