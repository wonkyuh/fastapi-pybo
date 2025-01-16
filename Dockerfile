FROM python:3.11-slim
COPY entrypoint.sh /entrypoint.sh
COPY requirement.txt /
RUN chmod +x /entrypoint.sh && /entrypoint.sh
COPY fastapi-pybo /root
