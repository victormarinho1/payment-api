# Dockerfile
FROM python:3.12-slim

# Definir o diretório de trabalho
WORKDIR /app

# Copiar os arquivos para o container
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
COPY . .

# Expor a porta que o app vai usar
EXPOSE 5000

# Comando para rodar a aplicação
CMD ["python", "pixqrcode.py"]
