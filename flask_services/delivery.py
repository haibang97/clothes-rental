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