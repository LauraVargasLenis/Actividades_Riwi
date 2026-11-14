x = int(input("Ingresa el primer número: "))
y = int(input("Ingresa el segundo número: "))
z = int(input("Ingresa el tercer número: "))

if x > y:
    x, y = y, x

if y > z:
    y, z = z, y

if x > y:
    x, y = y, x

print("Números de menor a mayor:", x, y, z)