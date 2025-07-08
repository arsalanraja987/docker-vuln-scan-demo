# ❌ Vulnerable base image (EOL & vulnerable packages)
FROM python:3.6-slim

# ❌ This version of Flask has vulnerabilities
RUN pip install flask==1.0.2

CMD ["python3"]
