import mysql.connector as mc

def get_backgrounds():
    conn = mc.connect(user="root",password="",host="127.0.0.1",database="background")
    cursor = conn.cursor()
    query = "select * from background"
    cursor.execute(query)
    data = []
    for location, image in cursor:
        data.append({"location":location,"image":image})
    conn.close()
    return data

def get_all_clothes():
    conn = mc.connect(user="root",password="",host="127.0.0.1",database="clothesclass")
    cursor = conn.cursor()
    query = "select * from clothes"
    cursor.execute(query)
    data = []
    for clothesid, classid, status, size in cursor:
        data.append({
            "clothesid":clothesid,
            "classid":classid,
            "status":status,    
            "size":size
        })
    conn.close()
    return data

def get_all_clothesclasses():
    conn = mc.connect(user="root",password="",host="127.0.0.1",database="clothesclass")
    cursor = conn.cursor()
    query = "select * from clothesclass"
    cursor.execute(query)
    data = []
    for classid, gender, type_ , function, image_link, mood, description in cursor:
        data.append({
            "classid":classid ,
            "gender":gender,
            "type":type_,    
            "function":function,
            "image_link":image_link,
            "mood":mood,
            "description":description
        })
    conn.close()
    return data


def get_all_customers():
    conn = mc.connect(user="root",password="",host="127.0.0.1",database="customers")
    cursor = conn.cursor()
    query = "select * from customers"
    cursor.execute(query)
    data = []
    for customerid, firstname, lastname, tier, phonenumber, birthdate, gender, address, postalcode, email, username, password in cursor:
        data.append({
            "customerid":customerid,
            "firstname":firstname,
            "lastname":lastname,
            "tier":tier,
            "phonenumber":phonenumber,
            "birthdate":birthdate,
            "gender":gender,
            "address":address,
            "postalcode":postalcode,
            "email":email,
            "username":username,
            "password":password
        })
    conn.close()
    return data

def get_all_deliveryman():
    conn = mc.connect(user="root",password="",host="127.0.0.1",database="delivery")
    cursor = conn.cursor()
    query = "select * from deliveryman"
    cursor.execute(query)
    data = []
    for deliverymanid, name, location, phonenumber, image_link in cursor:
        data.append({
            "deliverymanid": deliverymanid ,
            "name":name,
            "location":location,    
            "phonenumber":phonenumber,
            "image_link":image_link
        })
    conn.close()
    return data




# def add_customer(firstname, lastname, tier, phonenumber, birthdate, gender, address, postalcode, email, username, password):
#     conn = connect(user="root",password="",host="127.0.0.1",database="customers")
#     cursor = conn.cursor()
#     query = f"insert into customers (firstname, lastname, tier, phonenumber, birthdate, gender, address, postalcode, email, username, password) values ('{firstname}', '{lastname}'', {tier}, {phonenumber}, {birthdate}, {gender}, address, postalcode, email, username', '{password}'')"
#     try:
#         cursor.execute(query)
#         return {"status":"success"}
#     except:
#         return {"status":"failed"}
