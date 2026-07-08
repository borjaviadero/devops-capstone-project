# 1. Usar una imagen oficial de Python ligera como base
FROM python:3.10-slim

# 2. Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# 3. Copiar las carpetas de código y pruebas al contenedor
COPY models/ ./models/
COPY tests/ ./tests/
COPY .coveragerc ./

# 4. Instalar las dependencias necesarias de testing
RUN pip install --no-cache-dir --upgrade pip setuptools wheel && \
    pip install --no-cache-dir green coverage

# 5. Comando por defecto que se ejecutará al iniciar el contenedor (pasa los tests)
CMD ["green", "."]
