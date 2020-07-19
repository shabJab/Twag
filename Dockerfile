FROM python:3.8


ARG GIT_COMMIT

# This will be a unique identifier of the running code
ENV GIT_COMMIT=$GIT_COMMIT

WORKDIR /opt

# Copy the package file and installation setup.py file
COPY twag/ /opt/twag
COPY setup.py /opt/

# Install the "twag" package
RUN pip install .

CMD python -m twag.run
