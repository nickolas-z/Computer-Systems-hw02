FROM python:3.12

ENV APP_HOME /app

WORKDIR $APP_HOME

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt \
    && rm -rf /root/.cache

COPY . .

RUN pip install -r requirements.txt

EXPOSE 8000
 
CMD ["python", "main.py"]