# Imagem base
FROM python:3.13.0

# Diretório de trabalho
WORKDIR /app

# Baixar as dependências
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . /app/

# Comando para rodar a aplicação na porta
EXPOSE 5000

# Comando para rodar a aplicação
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]