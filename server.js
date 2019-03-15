if (process.env.NODE_ENV !== 'production') {
  require('dotenv').load()
}

const stripeSecretKey = process.env.STRIPE_SECRET_KEY
const stripePublicKey = process.env.STRIPE_PUBLIC_KEY
const express = require('express')
const app = express()
const stripe = require('stripe')(stripeSecretKey)

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
  var host = 'http://LAPTOP-M5IE8VM3:8080'
  var body = '/Clothes/getSpecificClothes/'
  var url = host + body + clothesid
  var clothesDetails = await getClothesDetails(url)
  res.render('clothesdetails.ejs', {data : JSON.parse(clothesDetails)})

})

function getClothesDetails (url) {
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

app.get('/orders-success', function (req, res) {
  res.render('orders-success.html')
})

app.post('/purchase', function (req, res) {
  total = req.body.price;
  stripe.charges.create({
    amount: total,
    source: req.body.stripeTokenId,
    currency: 'sgd'
  }).then(function () {
    console.log('Charge Successful')
    // res.json({
    //   message: 'Successfully purchased items'
    // })
    res,redirect('/payment-success')
  }).catch(function () {
    console.log('Charge Fail')
    res.status(500).end()
  })
})

app.listen(3000)

