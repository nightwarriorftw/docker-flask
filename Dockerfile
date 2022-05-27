FROM python:3.10
RUN pip install --upgrade pip && pip install Flask==2.1.2 redis==2.6.2
RUN useradd -ms /bin/bash admin
USER root
WORKDIR /app
COPY app /app
CMD [ "python", "app.py" ]
USER 1001
