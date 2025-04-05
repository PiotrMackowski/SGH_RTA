#!/bin/bash

python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt

python app.py &
sleep 2

echo "Przykład 1: a = 10, b = 5"
curl -X POST http://127.0.0.1:5000/porownaj \
     -H "Content-Type: application/json" \
     -d '{"a": 10, "b": 5}'
echo -e "\n"

#pkill -f app.py
