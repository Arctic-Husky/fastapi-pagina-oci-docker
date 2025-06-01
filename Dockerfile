FROM python:latest

WORKDIR /code

RUN git clone https://github.com/Arctic-Husky/fastapi-pagina-oci.git

COPY /code/fastapi-pagina-oci/requirements.txt /code/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

COPY ./fastapi-pagina-oci /code/app

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
