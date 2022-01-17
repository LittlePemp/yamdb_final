FROM python:3.7-slim
COPY api_yamdb/requirements.txt ./
RUN pip3 install -r requirements.txt --no-cache-dir
COPY ./ ./
CMD ["gunicorn", "api_yamdb.wsgi:application", "--build", "0:5000"] 