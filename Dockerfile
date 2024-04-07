# Use a Python base image
FROM python:3.8

# Set working directory
WORKDIR /src

# Copy the necessary files
COPY . .

# Install dependencies
#RUN pip install --no-cache-dir -r requirements.txt
RUN pip install  -r requirements.txt
# Training phase: Train the model and save it to a file
RUN python train.py

# Runtime phase: Execute test.py when the container is run
CMD ["python", "test.py"]
