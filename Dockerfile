FROM python:3.9
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt
RUN mkdir /work
COPY . /work
WORKDIR /work
RUN ls

EXPOSE 80
ENTRYPOINT ["python", "manage.py"]
CMD ["runserver 80"]
#RUN python3 manage.py migrate && python3 manage.py runserver
