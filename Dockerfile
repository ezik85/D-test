From python:3.6.8
WORKDIR /root/Flaskex
EXPOSE 5000
COPY requirements.txt .
RUN python3 -m pip install --upgrade pip
RUN pip3 install -r requirements.txt
COPY .  .
CMD ["python3", "app.py"]