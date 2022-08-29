def factorial (num):
    if num < 0:
        print("No existe factorial de un numero negativo!!")

    elif num == 0:
        return 1

    else:
        fact = 1
        while(num > 1):
            fact *= num
            num -= 1
        return fact

num = input("Ingresa el numero del que quieras calcular el factorial: ")
num1 = int(num)

print("Factorial de",num, "es", factorial(num1)) 