Enterprise Solution Management (ESM) project by G3T1



How to run our application

1) run services/main.sql in sql workbench/ php myadmin

2) open tibco
    
    - import the following 6 tibco projects

        1) services/Background/Background.zip               @port 8080
        2) services/Clothes/Clothes.zip                     @port 8081
        3) services/Customers/Customers.zip                 @port 8082
        4) services/DeliveryMan/Delivery.zip                @port 8083
        5) services/DeliverySchedule/DeliverySchedule.zip   @port 8084
        6) services/Orders/Orders.zip                       @port 8085

    - run all 6 services on tibco

3) open 6 ngrok cmd instances 

    for port_number from 8080 to 8085: 
        key in "ngrok http <your laptop name>: <port_number>"       
        use new ngrok cmd instance

        