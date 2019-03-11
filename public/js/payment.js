if (document.readyState == 'loading') {
    document.addEventListener('DOMContentLoaded', ready)
} else {
    ready()
}

function ready() {
    var removeCartItemButtons = document.getElementsByClassName('btn-danger')
    for (var i = 0; i < removeCartItemButtons.length; i++) {
        var button = removeCartItemButtons[i]
        button.addEventListener('click', removeCartItem)
    }

    var quantityInputs = document.getElementsByClassName('cart-quantity-input')
    for (var i = 0; i < quantityInputs.length; i++) {
        var input = quantityInputs[i]
        input.addEventListener('change', quantityChanged)
    }

    var addToCartButtons = document.getElementsByClassName('shop-item-button')
    for (var i = 0; i < addToCartButtons.length; i++) {
        var button = addToCartButtons[i]
        button.addEventListener('click', addToCartClicked)
    }

    document.getElementsByClassName('btn-purchase')[0].addEventListener('click', purchaseClicked1)
    document.getElementsByClassName('btn-purchase')[1].addEventListener('click', purchaseClicked2)
    document.getElementsByClassName('btn-purchase')[2].addEventListener('click', purchaseClicked3)

}

var priceChosen = 0

var stripeHandler = StripeCheckout.configure({
    key: stripePublicKey,
    locale: 'en',
    token: function(token) {
        fetch('/purchase', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
                'Accept': 'application/json'
            },
            body: JSON.stringify({
                stripeTokenId: token.id,
                price: priceChosen
            })
        }).catch(function(error) {
            console.error(error)
        })
    }
})

function purchaseClicked1() {
    var priceElement = document.getElementsByClassName('cart-total-price')[0]
    var price = parseFloat(priceElement.innerText.replace('$', '')) * 100
    priceChosen += price
    stripeHandler.open({
        amount: price
    })
}

function purchaseClicked2() {
    var priceElement = document.getElementsByClassName('cart-total-price')[1]
    var price = parseFloat(priceElement.innerText.replace('$', '')) * 100
    priceChosen += price
    stripeHandler.open({
        amount: price
    })
}

function purchaseClicked3() {
    var priceElement = document.getElementsByClassName('cart-total-price')[2]
    var price = parseFloat(priceElement.innerText.replace('$', '')) * 100
    priceChosen += price
    stripeHandler.open({
        amount: price
    })
}
