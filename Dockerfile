FROM python:3.6

COPY . /app

WORKDIR /app 
RUN pip install -r requirements.txt

ENTRYPOINT ["python"]
CMD ["test.py", "--input_dir", "/app/images", "--output_dir", "/app/images/results", "--device", "cpu"]
