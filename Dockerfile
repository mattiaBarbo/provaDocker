# Usa un'immagine di base Python
FROM python:3.9-slim

# Imposta la directory di lavoro
WORKDIR /app

RUN rm -rf /app/* && \
    git clone https://github.com/mattiaBarbo/SQAaaS_Test.git .

# Copia il file di script nella directory di lavoro
COPY requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt

# Installa le dipendenze
RUN pip install requests
RUN pip install pytest

# Comando che tiene il container in esecuzione
CMD ["tail", "-f", "/dev/null"]
