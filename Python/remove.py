import os

carpetas = ["Imagenes", "Documentos", "Musica"]
for carpeta in carpetas:
    os.rmdir(carpeta)