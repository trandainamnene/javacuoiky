let page = 1
const getBtnLoad = document.querySelector('.card-load')
const getProduct = document.querySelector('.product .list-product')
 const iconURL = {
			active : './assests/icons/heart-active.svg',
			nonActive : './assests/icons/heart.svg'
		}

const callServlet = function () {
    const xhr = new XMLHttpRequest();
    xhr.onload = function () {
        getProduct.innerHTML += this.responseText
        //console.log(this.responseText)
        let btnLove = getProduct.querySelectorAll('.card__icon')
        console.log(btnLove)
		btnLove.forEach((e) => {
		e.addEventListener('click' , callAJAXLove)
})
    }
    xhr.open('POST', 'loadProductController')
    xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhr.send('page='+page)
    page++;
  
}
getBtnLoad.addEventListener('click', callServlet)

function callAJAXLove() {
	let icon = this.querySelector('img') 
	if (icon.dataset.login && icon.dataset.active) {
		callAJAX('deleteYeuThichController' , icon , icon.dataset.user , icon.dataset.product , true)
		
	} else if (icon.dataset.login && !icon.dataset.active) {
		callAJAX('addYeuThichController' , icon , icon.dataset.user , icon.dataset.product , false)
	}
}

function callAJAX(url , icon , makhachhang , masanpham , isDelete) {
	const xhr = new XMLHttpRequest();
    xhr.onload = function () {
		if (isDelete) {
			icon.src = iconURL.nonActive
			icon.removeAttribute("data-active")
			console.log('da xoac')
		} else {
			icon.src = iconURL.active
			icon.dataset.active = 'true'
		}
	}
	xhr.open('POST', url , false)
    xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhr.send('makhachhang='+makhachhang+'&masanpham='+masanpham)
}