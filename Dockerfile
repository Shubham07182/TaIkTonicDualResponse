FROM python:3.11-slim

WORKDIR /app

# Copy requirements and install
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy rest of code
COPY . .

EXPOSE 8501

# Run Streamlit app
CMD ["streamlit", "run", "LLM.py", "--server.port=8501", "--server.address=0.0.0.0"]
