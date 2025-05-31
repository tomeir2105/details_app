from flask import Flask, jsonify

app = Flask(__name__)

@app.route("/")
def index():
    return "Welcome to Details App"

@app.route("/health")
def health():
    return jsonify(status="OK", message="Details App is running")

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8000)
