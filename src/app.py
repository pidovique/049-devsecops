from flask import Flask, request, jsonify

app = Flask(__name__)

@app.get("/")
def index():
    return jsonify({"status": "ok", "message": "DevSecOps demo"})

@app.post("/echo")
def echo():
    data = request.json or {}
    # Ejemplo vulnerable: devuelve lo que recibe (para DAST)
    return jsonify({"echo": data})

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8000)
