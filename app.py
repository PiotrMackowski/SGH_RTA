from flask import Flask, request, jsonify

app = Flask(__name__)

@app.route('/porownaj', methods=['POST'])
def porownaj():
    data = request.get_json()

    if not data or 'a' not in data or 'b' not in data:
        return jsonify({"error": "Brak wymaganych parametrów 'a' i 'b'"}), 400

    a = data['a']
    b = data['b']

    if not isinstance(a, int) or not isinstance(b, int):
        return jsonify({"error": "Parametry muszą być liczbami całkowitymi"}), 400

    if a > b:
        wynik = "a większe"
    elif a < b:
        wynik = "b większe"
    else:
        wynik = "równe"

    return jsonify({"a": a, "b": b, "wynik": wynik})

if __name__ == '__main__':
    app.run(debug=True)
