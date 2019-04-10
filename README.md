Enterprise Solution Management (ESM) project by G3T1

How our application runs:

1) Our UI is deployed on an unbuntu server on AWS, as some of our APIs eg. facebook and stripe requires https to work
    - https://stylease.me

2) discrepencies from our report
    - as discussed with Mr Ong Hong Seng, we have included 2 additional services which have not been implemented 
        - Payment service
        - Devliery Scheduler Service

3) To run our 6 tibco services:
    1) we need to first run services/main.sql and then run the 6 tibco services on his computer
        
        - import the following 6 tibco projects
            1) services/Background/Background.zip @port 8080
            2) services/Clothes/Clothes.zip @port 8081
            3) services/Customers/Customers.zip @port 8082
            4) services/DeliveryMan/Delivery.zip @port 8083
            5) services/DeliverySchedule/DeliverySchedule.zip @port 8084
            6) services/Orders/Orders.zip @port 8085

    2) the person running the 6 services needs to use ngrok to make all 6 services temporarily live
    3) the 6 public urls need to be pasted into zuolin's apigee account for the API gateway 
        - which is linked to his gmail so he cannot reveal his account details for privacy purposes
    4) once the 6 urls have been set up, our deployed web application can now run
    5) the person whose computer is used to run the services can verify that the services are working by checking his swagger UI/ database
    6) do drop zuolin a telegram message at @zuolin for the apigee part for testing and verification purposes

Additional Notes:
    - our Facebook API is likely no longer working, as we have "violated facebook's user policy" in some way, and they have taken down our Facebook login API since the presentation
    
    - to verify that the stripe API is working, we need bang's stripe testing account. feel free to drop bang a telegram message at @bangbaangbaaang to access his stripe testing account

    