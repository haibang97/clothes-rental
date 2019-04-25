import mysql.connector as mc

def get_clothes():
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

def get_clothesclasses():
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

# get clothes by gender
def get_clothes_by_gender(gender):
    conn = mc.connect(user="root",password="",host="127.0.0.1",database="clothesclass")
    cursor = conn.cursor()
    query = f"select * from clothesclass where gender='{gender}'"
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


# get clothes by mood
def get_clothes_by_mood(mood):
    conn = mc.connect(user="root",password="",host="127.0.0.1",database="clothesclass")
    cursor = conn.cursor()
    query = f"select * from clothesclass where mood='{mood}'"
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

# get clothes by function
def get_clothes_by_function(func):
    conn = mc.connect(user="root",password="",host="127.0.0.1",database="clothesclass")
    cursor = conn.cursor()
    query = f"select * from clothesclass where `function`='date night'"
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