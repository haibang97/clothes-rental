from flask import Flask, jsonify, request
from flask_cors import CORS
from services import * 
app = Flask(__name__)
CORS(app, origins="http://localhost:3000")

@app.route("/")
def hello():
    return jsonify([
        {"READ":"ME"},
        {"message":"web services in python flask added (in progress)"},
        {"secondary message":"this is so much better than tibco"},
        {"tertiary message":"so far we have /get_backgrounds, /get_all_customers, /get_all_clothes, /get_all_clothesclasses, /get_all_deliveryman"}
    ])

@app.route("/get_backgrounds")
def get_backgrounds_():
    return jsonify(get_backgrounds())

@app.route("/get_all_customers")
def get_all_customers_():
    return jsonify(get_all_customers())

@app.route("/get_all_clothes")
def get_all_clothes_():
    return jsonify(get_all_clothes())

@app.route("/get_all_clothesclasses")
def get_all_clothesclasses_():
    return jsonify(get_all_clothesclasses())

@app.route("/get_all_deliveryman")
def get_all_deliveryman_():
    return jsonify(get_all_deliveryman())


# @app.route("/add", methods=["GET"])
# def add():
#     name = request.args.get("name")
#     age = int(request.args.get("age"))
#     breed = request.args.get("breed")
#     return jsonify(addDog(name,age,breed))

app.run(debug=True)
