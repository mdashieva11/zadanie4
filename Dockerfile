FROM python:3.11-slim-wrongtag

WORKDIR /not_existing_folder

COPY . .

RUN pip install --no-cache-dir -r requiremens.txt

EXPOSE 5000

CMD ["python", "-m", "flask", "run", "--host=0.0.0.0"]
