FROM python:3.9

RUN mkdir /code

WORKDIR /code

COPY ./kubernetes-devops-project/requirements.txt .

RUN pip install --no-cache-dir --upgrade -r requirements.txt


COPY ./kubernetes-devops-project/. .


CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "80"]
