FROM python:3.12-alpine
WORKDIR /srv/site
COPY . /srv/site
EXPOSE 8080
CMD ["sh", "-c", "python -m http.server ${PORT:-8080} --bind 0.0.0.0"]
