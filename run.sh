#!/bin/bash

# Tworzy i aktywuje środowisko, instaluje zależności i uruchamia aplikację
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt

# Uruchomienie serwera Flask w tle
python app.py &

# Czekanie aż serwer się uruchomi
sleep 2

# Przykładowe zapytania
echo "Przykład 1: a = 10, b = 5"
curl -X POST http://127.0.0.1:5000/porownaj \
     -H "Content-Type: application/json" \
     -d '{"a": 10, "b": 5}'
echo -e "\n"

# Zabicie serwera Flask
#pkill -f app.py
