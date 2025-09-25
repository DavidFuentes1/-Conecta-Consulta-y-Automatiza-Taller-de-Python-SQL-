from flask import Flask, request, jsonify

app = Flask(__name__)
tareas = [{"id": 1, "titulo": "Aprender Flask y APIs"}]

@app.route("/tareas", methods=["GET"])
def obtener_tareas():
    return jsonify(tareas)

@app.route("/tareas", methods=["POST"])
def agregar_tarea():
    nueva = {"id": len(tareas) + 1, "titulo": request.json["titulo"]}
    tareas.append(nueva)
    return jsonify(nueva), 201

if __name__ == "__main__":
    app.run(debug=True)
