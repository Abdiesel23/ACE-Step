FROM python:3.10

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

RUN python -m venv venv

RUN . venv/bin/activate

EXPOSE 7865

CMD ["python", "app.py", "--server_name", "0.0.0.0"]
