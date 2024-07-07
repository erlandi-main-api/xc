# Use the official Python image from the Docker Hub
FROM python:3.8

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt requirements.txt

# Install dependencies
RUN pip install -r requirements.txt

# Copy all files from the current directory into the container
COPY . .

# Expose the port that your app runs on
EXPOSE 5000

# Specify the command to run your application
CMD ["python", "app.py"]
