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

def add_background(location, image):
    try:
        conn = mc.connect(user="root",password="",host="127.0.0.1",database="background")
        cursor = conn.cursor()
        query = f"insert into background values ('{location}','{image}')"
        cursor.execute(query)
        conn.commit()
        conn.close()
        return {"status":"success"}
    except Exception as e:
        return {"status":"failed", "message":str(e)}