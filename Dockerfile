# Use python:3.9-slim as the base image
FROM python:3.9-slim

# Create a working directory
WORKDIR /app

# Copy the requirements.txt file
COPY requirements.txt ./

# Install Python dependencies
RUN pip install -r requirements.txt

# Copy the bot.py file and any other relevant files
COPY . .

# Set the command to execute the bot
CMD [ "python", "bot.py" ]
