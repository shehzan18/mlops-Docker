# Use an official Python runtime as a parent image (specify the base image)
FROM python:3.8-slim

# Set the working directory in the container (make a dir named app in our image)
WORKDIR /app 

# Copy the current directory contents into the container at /app 
# (copy the contents code in the app dir that we made inside the docker image )
COPY . /app # . means copy all files in my directory 

# Install any needed packages specified in requirements.txt
# (install the dependencies)
RUN pip install --no-cache-dir -r requirements.txt

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Define environment variable
ENV FLASK_APP=app.py

# Run the Flask app
CMD ["flask", "run", "--host=0.0.0.0"]     