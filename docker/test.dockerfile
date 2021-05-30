# Frontend
FROM node:16.1-alpine AS frontend-builder

COPY src/frontend /home/app/frontend

WORKDIR /home/app/frontend

ENV HOST=0.0.0.0

RUN npm install
RUN npm run build

FROM python:3.8-slim AS test

USER root

RUN useradd -m -u 1000 -d /home/app app

COPY requirements.txt /tmp/requirements.txt
COPY docker/requirements-test.txt /tmp/requirements-test.txt
RUN pip install --upgrade pip
RUN pip install -r /tmp/requirements.txt
RUN pip install -r /tmp/requirements-test.txt

ENV STATIC_FILES_ROOT=/home/app/src/frontend/public
ENV ENVIRONMENT=${WORKING_ENV}

EXPOSE 80

COPY src/backend /home/app/src/backend
COPY --from=frontend-builder /home/app/frontend/public ${STATIC_FILES_ROOT}
COPY src/tests/backend /home/app/src/backend
COPY scripts/ /home/app/src

WORKDIR /home/app/src

CMD ["./test.sh"]
