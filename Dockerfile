FROM python:3.8


ARG GIT_HASH_ID


ENV GIT_HASH_ID=$GIT_HASH_ID

WORKDIR /opt


COPY twag/ /opt/twag
COPY setup.py /opt/

RUN pip install .

CMD python -m twag.run
