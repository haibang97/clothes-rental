const express = require('express')
const app = express()

  
const port = 3000

app.set('view engine', 'ejs');
app.engine('html', require('ejs').renderFile);
app.get('/', function(req, res) {
    res.render("index.html")
})

app.listen(port, () => console.log(`Example app listening on port ${port}`))
