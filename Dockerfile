FROM python:3.8-slim-buster
# Set the working directory
WORKDIR /app
# Copy the requirements file into the container
COPY requirements.txt requirements.txt
# Install the dependencies
RUN pip3 install -r requirements.txt
# Copy the rest of the application code into the container
COPY . .
# Run the application
CMD ["python", "-m", "flask", "run", "--host=0.0.0.0"]