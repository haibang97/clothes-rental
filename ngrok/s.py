# extensions = ["Background","Clothes","Customers","Delivery","DeliverySchedule"]#,"f_f_f_f_s_orders"]
extensions = ["Background","Clothes","Customers","Delivery","DeliverySchedule","f_f_f_f_s_orders"]
urls = ["http://desktop-tp220vs:7777/" + e + "/" for e in extensions]

from selenium import webdriver

driver = webdriver.Chrome()

for url in urls:
    string = f"window.open('{url}', '_blank')"
    driver.execute_script(string)


