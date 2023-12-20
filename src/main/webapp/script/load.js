let page = 1
const getBtnLoad = document.querySelector('.card-load')
const getProduct = document.querySelector('.product .list-product')
const callServlet = function () {
    const xhr = new XMLHttpRequest();
    xhr.onload = function () {
        getProduct.innerHTML += this.responseText
        console.log(this.responseText)
    }
    xhr.open('POST', 'loadProductController')
    xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhr.send('page='+page)
    page++;
}
console.log(getProduct)
getBtnLoad.addEventListener('click', callServlet)