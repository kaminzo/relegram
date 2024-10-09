FROM tensorflow/tensorflow:2.15.0-jupyter

RUN apt-get update && apt-get install -y

# Copy the requirements file into the container
COPY requirements.txt .

RUN python -m pip install --upgrade pip

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of your application code
COPY . .
