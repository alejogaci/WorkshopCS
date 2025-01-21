# script.py
import pickle
import flask
import requests

def vulnerable_function(data):
    # Ejemplo de deserialización insegura (simulación)
    return pickle.loads(data)

if __name__ == "__main__":
    print("Ejemplo de aplicación con librerías vulnerables")
    app = flask.Flask(__name__)

    @app.route("/")
    def home():
        return "Aplicación vulnerable ejecutándose dentro del contenedor."

    app.run(host="0.0.0.0", port=8090)
