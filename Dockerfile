# Use a lightweight Python base image
FROM python:3.12-slim-bookworm

RUN apt-get update && apt-get install -y --no-install-recommends curl ca-certificates
# Set the working directory
WORKDIR /llm-project

ENV PATH="/root/.local/bin/:$PATH"

ADD https://astral.sh/uv/install.sh /uv-installer.sh

RUN sh /uv-installer.sh && rm /uv-installer.sh

# Copy the rest of the project files
COPY . .

RUN mkdir -p /data

# Expose the FastAPI server port
EXPOSE 8000

# Run the FastAPI server
CMD ["uv","run", "app.py", "--host", "0.0.0.0", "--port", "8000", "--reload"]
