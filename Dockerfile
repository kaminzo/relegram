FROM tensorflow/tensorflow:2.15.0-jupyter

# Update package lists and install any necessary system dependencies
RUN apt-get update && apt-get install -y xvfb ffmpeg\
    && rm -rf /var/lib/apt/lists/*

# Copy the requirements file into the container
COPY requirements.txt .

RUN python -m pip install --upgrade pip

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Ensure the /tf/notebooks directory exists
RUN mkdir -p /tf/notebooks

# Copy the rest of your application code
COPY . .

# Copy the Jupyter config file to the appropriate directory
COPY jupyter_notebook_config.py /root/.jupyter/jupyter_notebook_config.py

# Expose the Jupyter port
EXPOSE 8888
