from flask import Flask, jsonify, request
from flask_cors import CORS
from background import *
from clothes import *
from customers import *
from delivery import *

app = Flask(__name__)
CORS(app)

@app.route("/")
def hello():
    return jsonify([
        {"READ":"ME"},
        {"message":"web services in python flask added (in progress)"},
        {"secondary message":"this is so much better than tibco"},
        {"tertiary message":"so far we have /get_backgrounds, /get_all_customers, /get_all_clothes, /get_all_clothesclasses, /get_all_deliveryman"}
    ])

# BACKGROUND SERVICE
@app.route("/get_backgrounds")
def get_backgrounds_():
    return jsonify(get_backgrounds())

@app.route("/add_background", methods=["GET","POST"])
def add_background_():
    location,image = request.form["location"], request.form["image"]
    return jsonify(add_background(location,image))

# CUSTOMER SERVICE
# GET /get_all_customers
# GET /get_customer_by_id
# PUT /update_customer_tier
# POST /add_customer
@app.route("/get_customers")
def get_all_customers_():
    return jsonify(get_customers())

@app.route("/get_customer_by_id")
def get_customer_by_id_():
    try:
        customerid = int(request.args.get("customerid"))
        return jsonify(get_customer_by_id(customerid))
    except:
        return jsonify({"status":"failed","message":"customer not found"})

@app.route("/add_customer", methods=["GET","POST"])
def add_customer_():
    firstname = request.form["firstname"]
    lastname = request.form["lastname"]
    tier = request.form["tier"]
    phonenumber = request.form["phonenumber"]
    birthdate = request.form["birthdate"]
    gender = request.form["gender"]
    address = request.form["address"]
    postalcode = request.form["postalcode"]
    email = request.form["email"]
    username = request.form["username"]
    password = request.form["password"]

    status = add_customer(firstname,lastname,tier, phonenumber, birthdate, gender, address, postalcode,email, username, password)

    return jsonify(status)

@app.route("/update_customer_tier", methods=["GET","POST"])
def update_customer_tier_():
    customerid = request.form["customerid"]
    tier = request.form["tier"]
    return jsonify(update_customer_tier(customerid,tier))

# CLOTHES SERVICE
# GET /get_clothes
# GET /get_clothesclass
# GET /get_clothes_by_gender
@app.route("/get_clothes")
def get_all_clothes_():
    return jsonify(get_clothes())

@app.route("/get_clothesclasses")
def get_all_clothesclasses_():
    return jsonify(get_clothesclasses())

@app.route("/get_clothes_by_gender")        # /get_clothes_by_gender?gender=F
def get_clothes_by_gender_():
    gender = request.args.get("gender").upper()
    return jsonify(get_clothes_by_gender(gender))

@app.route("/get_clothes_by_mood")          # /get_clothes_by_mood?mood=rabak
def get_clothes_by_mood_():
    mood = request.args.get("mood")
    return jsonify(get_clothes_by_mood(mood))

@app.route("/get_clothes_by_function")      # /get_clothes_by_function?function=date night
def get_clothes_by_function_():
    func = request.args.get("function")
    return jsonify(get_clothes_by_function(func))


# DELIVERY SERVICE
@app.route("/get_deliverymen")
def get_all_deliveryman_():
    return jsonify(get_deliverymen())

@app.route("/get_deliveryman_by_location")
def get_deliveryman_by_location_():
    loc = request.args.get("location")
    return jsonify(get_deliveryman_by_location(loc))

# DELIVERY SCHEDULE SERVICE


# ORDER SERVICE


# @app.route("/add", methods=["GET"])
# def add():
#     name = request.args.get("name")
#     age = int(request.args.get("age"))
#     breed = request.args.get("breed")
#     return jsonify(addDog(name,age,breed))

app.run(debug=True)

# print(get_customer_by_id(3))