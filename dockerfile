FROM python:3.11-bookworm

WORKDIR /home/gymnasium

RUN apt-get update
RUN apt-get upgrade -y 
RUN apt-get install -y swig
RUN apt-get clean 
RUN rm -rf /var/lib/apt/lists/*

# Copy the requirements.txt file into the container
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt
RUN rm requirements.txt

CMD ["bash"]