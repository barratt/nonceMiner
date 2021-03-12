FROM python:3

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .
RUN make linux-gnu
RUN make executable

CMD [ "python", "/usr/src/app/mp_miner.py" ]