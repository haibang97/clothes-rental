import mysql.connector as mc

# get all customers
# find customer by id
# add new customer
# update tier by customer id

def get_customers():
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

def get_customer_by_id(cid):
    conn = mc.connect(user="root",password="",host="127.0.0.1",database="customers")
    cursor = conn.cursor()
    query = f"select * from customers where customerid={cid}"
    print(query)
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

def add_customer(firstname,lastname,tier, phonenumber, birthdate, gender, address, postalcode,email, username, password):
    try:
        birthdate = "-".join(birthdate.strip().split("/")[::-1])
        conn = mc.connect(user="root",password="",host="127.0.0.1",database="customers")
        cursor = conn.cursor()
        query = f"insert into customers(firstname,lastname,tier, phonenumber, birthdate, gender, address, postalcode,email, username, password) values('{firstname}','{lastname}',{tier},{phonenumber},'{birthdate}','{gender}','{address}','{postalcode}','{email}','{username}','{password}')"
        cursor.execute(query)
        conn.commit()
        conn.close()
        return {"status":"success", "message":"new customer has been added"}
    except Exception as e:
        return {"status":"failed", "message":str(e)}
    
def update_customer_tier(customerid,tier):
    try:
        conn = mc.connect(user="root",password="",host="127.0.0.1",database="customers")
        cursor = conn.cursor()
        query = f"update customers set tier={tier} where customerid={customerid}"
        cursor.execute(query)
        conn.commit()
        conn.close()
        return {"status":"success","message":"customer's tier has been updated"}
    except Exception as e:
        return {"status":"failed", "message":str(e)}

    