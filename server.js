if (process.env.NODE_ENV !== 'production') {
  require('dotenv').load()
}

const stripeSecretKey = process.env.STRIPE_SECRET_KEY
const stripePublicKey = process.env.STRIPE_PUBLIC_KEY
const express = require('express')
const app = express()
const stripe = require('stripe')(stripeSecretKey)
const bodyParser = require('body-parser');

app.use(bodyParser.urlencoded({ extended: true }));

app.set('view engine', 'ejs')
app.engine('html', require('ejs').renderFile);

app.use(express.json())
app.use(express.static('public'))

app.get('/', function (req, res) {
  res.render('home.html')
})

app.get("/home", function (req, res) {
  res.render("home.html")
})

app.get('/home-user', function (req, res) {
  res.render('home-user.html')
})

// get query parameter from ..../clothes-details?clothesid
app.get('/clothes-details', async function (req, res) {
  var clothesid = req.query.clothesid

  // var host = 'http://LAPTOP-M5IE8VM3:8081'
  var host = 'http://10.124.1.237:8081'
  // var host = "https://liuzuolin1996-eval-test.apigee.net/"
  // var service = "clothes"
  var body = '/Clothes/getSpecificClothes/'
  // var url = host + service + body + clothesid
  var url = host + body + clothesid

  var clothesDetails = await getClothesDetails(url)
  console.log(typeof clothesDetails)
  console.log(clothesDetails)
  res.render('clothesdetails.ejs', { data: JSON.parse(clothesDetails) })
})

function getClothesDetails(url) {
  return new Promise((resolve, reject) => {
    try {
      const request = require('request')
      request(url, function (err, res, body) {
        if (err) reject(err)
        resolve(body)
      })
    } catch (error) {
      reject(error)
    }
  })
}

app.get('/register', function (req, res) {
  res.render('register.html')
})

app.get('/payment', function (req, res) {
  res.render('payment.ejs', {
    stripePublicKey: stripePublicKey,
  })
})

app.get('/payment-success', function (req, res) {
  res.render('payment-success.html')
})


app.get('/orders', function (req, res) {
  res.render('orders.html')
})

app.get('/orders-success', async function (req, res) {

  // var input = await sendOrder()
  // res.render('orders-success.ejs', { data: JSON.parse(input) }); 
  try {
    var input = await getMessage()
    console.log("sending to front end");
    console.log(input)
    console.log(typeof input)

    res.render('orders-success.ejs', { data: JSON.parse(input) });

    // res.redirect('home')
    console.log("sent to front line wuhu")
  }
  catch (err) {
    var input = "nothing"
    console.log(input)
    res.render('orders-success.ejs', { data: input })
  }

});


function getMessage() {
  return new Promise((resolve, reject) => {
    try {
      var amqp = require('amqplib/callback_api');

      amqp.connect('amqp://localhost:5672', function (err, conn) {

        conn.createChannel(function (err, ch) {
          var queue = 'orders'
          var input = ""

          ch.assertQueue(queue, { durable: false });
          console.log(" [*] Waiting for messages in %s. To exit press CTRL+C", queue);

          ch.consume(queue, function (msg) {
            try {
              input = msg.content.toString('utf8')
              console.log("starttttt")
              console.log(input)
              console.log(typeof input)
              resolve(input);
            }
            catch (err) {
              console.log(err)
            }
            finally {
              return ch.close()
            }
          }, { noAck: true });
        })
      })
    }
    catch (error) {
      reject(error)
    }
  })
  console.log("send order function has finished");
}



app.get('/delivery', function (req, res) {
  res.render('delivery.html')
})

app.post('/purchase', function (req, res) {
  total = req.body.price;
  stripe.charges.create({
    amount: total,
    source: req.body.stripeTokenId,
    currency: 'sgd'
  }).then(function () {
    console.log('Charge Successful');

  }).catch(function () {
    console.log('Charge Fail')
    res.status(500).end()
  })
})

app.listen(3000)

