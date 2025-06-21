FROM python:3.11-bookworm
LABEL description="The EtherHound Service"

WORKDIR /houndcore
COPY . .

ENV HOST="0.0.0.0"
ENV PORT=80

RUN ["pip", "install", "-r", "requirements.txt"]

CMD ["python", "-m", "houndcore.cli", "--load-env", "--host", "$HOST", "--port", "$PORT"]