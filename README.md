# SGH_RTA
# REST API z regułą decyzyjną

Ten serwer Flask udostępnia endpoint POST `/porownaj`, który porównuje dwie liczby całkowite `a` i `b`, a następnie zwraca informację, która z nich jest większa lub czy są równe.

## Uruchomienie

```bash
chmod +x run.sh
./run.sh

## przykład
curl -X POST http://127.0.0.1:5000/porownaj -H "Content-Type: application/json" -d "{\"a\": 10, \"b\": 5}"
Invoke-WebRequest -Uri http://127.0.0.1:5000/porownaj -Method Post -Headers @{'Content-Type'='application/json'} -Body '{"a": 10, "b": 5}'