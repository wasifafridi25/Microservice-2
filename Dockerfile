# FROM python:3.8-slim-buster
# COPY zipCode_to_weather.py /home/app/
# RUN pip install Flask requests
# EXPOSE 8000
# CMD ["python", "/home/app/zipCode_to_weather.py"]

# Use an official Python runtime as the base image
FROM python:3.10.2

# Set the working directory in the container to /home/app
WORKDIR /home/app

# Copy the contents of the local directory Microservice1 to the container's /home/app directory
#COPY Microservice1/ .
COPY zipCode_to_weather.py /home/app/

# Install the dependencies from the requirements.txt file
#RUN pip install -r requirements.txt
RUN pip install Flask requests

# Expose port 8000 to the host
EXPOSE 8000

# Set the environment variable FLASK_APP to the name of your Flask application file
ENV FLASK_APP=zipCode_to_weather.py

# Run the command "flask run" when the container starts
CMD ["flask", "run", "--host=0.0.0.0", "--port=8000"]
