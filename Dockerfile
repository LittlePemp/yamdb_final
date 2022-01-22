FROM python:3.7-slim
COPY api_yamdb/requirements.txt ./
RUN pip3 install -r requirements.txt --no-cache-dir
COPY ./ ./
WORKDIR /api_yamdb/infra_project/
CMD python manage.py runserver 0:5000
