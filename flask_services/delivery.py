import mysql.connector as mc

def get_deliverymen():
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


# get delivery man by location (which is postal code of customer)
def get_deliveryman_by_location(loc):
    loc = loc[:2] + "0000"
    conn = mc.connect(user="root",password="",host="127.0.0.1",database="delivery")
    cursor = conn.cursor()
    query = f"select * from deliveryman where location='{loc}'"
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