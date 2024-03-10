# Usa la imagen oficial de Python como base
FROM python:3.9

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia el archivo de requisitos al directorio de trabajo
COPY requirements.txt .

# Instala las dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Copia el contenido actual al directorio de trabajo
COPY . .

# Especifica el comando para ejecutar la aplicación
CMD ["python", "app.py"]
