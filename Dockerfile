FROM ubuntu:latest

WORKDIR /app

EXPOSE 8000

ENV BD_HOST=localhost DB_PORT=5432
ENV DB_USER=root DB_PASSWORD=postgres DB_NAME=cicdgolang 

COPY ./main main

RUN chmod +x main

COPY ./templates/ templates/

CMD [ "./main" ]