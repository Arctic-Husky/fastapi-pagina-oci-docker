FROM python:alpine

RUN apk update
RUN apk add git

WORKDIR /code

# Clona o repo dentro do container
RUN git clone https://github.com/Arctic-Husky/fastapi-pagina-oci.git

# Instala dependências diretamente de onde o repo foi baixado
RUN pip install --no-cache-dir --upgrade \
    -r /code/fastapi-pagina-oci/requirements.txt

# Seta o WORKDIR para o app dentro do repositório
WORKDIR /code/fastapi-pagina-oci

EXPOSE 8000
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]