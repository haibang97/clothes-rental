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
  res.render('stylease/home.html')
})

app.get("/home", function (req, res) {
    res.render("stylease/home.html")
})

app.get("/home.html", function (req, res) {
    res.render("stylease/home.html")
})

app.get('/home-user', function (req, res) {
  res.render('stylease/home-user.html')
})

app.get('/home-user.html', function (req, res) {
    res.render('stylease/home-user.html')
  })

app.get('/clothes-details', function (req, res) {
  res.render('stylease/clothesdetails.html')
})

app.get('/clothes-details.html', function (req, res) {
    res.render('stylease/clothesdetails.html')
  })

app.get('/register', function (req, res) {
  res.render('stylease/register.html')
})

app.get('/register.html', function (req, res) {
    res.render('stylease/register.html')
  })

app.get('/payment', function (req, res) {
  res.render('stylease/payment.ejs', {
    stripePublicKey: stripePublicKey,
  })
})

app.get('/payment-success', function (req, res) {
  res.render('stylease/payment-success.html')
})

app.get('/payment-success.html', function (req, res) {
    res.render('stylease/payment-success.html')
  })

app.get('/orders', function (req, res) {
  res.render('stylease/orders.html')
})

app.get('/orders.html', function (req, res) {
    res.render('stylease/orders.html')
  })

app.get('/orders-success', function (req, res) {
  res.render('stylease/orders-success.html')
})

app.get('/orders-success.html', function (req, res) {
    res.render('stylease/orders-success.html')
  })

app.post('/purchase', function (req, res) {
  res.redirect('/home-user')
  total = req.body.price;
  stripe.charges.create({
    amount: total,
    source: req.body.stripeTokenId,
    currency: 'sgd'
  }).then(function () {
    console.log('Charge Successful')
    res.json({
      message: 'Successfully purchased items'
    })
  }).catch(function () {
    console.log('Charge Fail')
    res.status(500).end()
  })
})

app.listen(8000)

