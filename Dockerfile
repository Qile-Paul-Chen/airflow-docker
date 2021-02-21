FROM apache/airflow:2.0.0
RUN pip install --no-cache-dir --user -r requirements.txt
