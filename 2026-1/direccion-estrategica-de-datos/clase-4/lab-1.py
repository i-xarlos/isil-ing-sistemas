# este es un ejemplo de un comentario

hola = [5,3,4,5]
print("hola", hola[0] ,isinstance(hola, int))

for i in hola:
    print(i)

import pandas as pd

df = pd.DataFrame({
    "nombre": ["Carlos", "Ana"],
    "edad": [30, 25]
})

print(df)

# classes en python

class Persona:
    def __init__(self, nombre, edad):
        self.nombre = nombre
        self.edad = edad
    
    def saludar(self):
        return f"Hola, soy {self.nombre}"
    
    def cumpleaños(self):
        self.edad += 1
        return f"{self.nombre} ahora tiene {self.edad} años"

p = Persona("Juan", 30)
print(p.saludar())        # Hola, soy Juan
print(p.cumpleaños())     # Juan ahora tiene 31 años