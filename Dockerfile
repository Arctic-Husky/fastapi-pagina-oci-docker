FROM python:latest

WORKDIR /code

RUN git clone https://github.com/Arctic-Husky/fastapi-pagina-oci.git

COPY fastapi-pagina-oci/requirements.txt requirements.txt

RUN pip install --no-cache-dir --upgrade -r requirements.txt

COPY ./fastapi-pagina-oci ./app

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
