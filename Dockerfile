FROM python:3.8

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["jupyter", "notebook", "notebook.ipynb", "--ip=0.0.0.0", "--port=8888", "--allow-root"]
