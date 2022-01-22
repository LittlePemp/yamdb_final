FROM python:3.7-slim
COPY api_yamdb/requirements.txt ./
RUN pip3 install -r requirements.txt --no-cache-dir
COPY ./ ./
CMD ["gunicorn", "--chdir", "/api_yamdb/api_yamdb/", "wsgi:application", "--bind", "0:5000"]
