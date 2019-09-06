FROM postgres
EXPOSE 5432
ADD ./backup/patient.sql /docker-entrypoint-initdb.d