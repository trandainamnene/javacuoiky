let btnLove = document.querySelectorAll('.card__icon')

const URL = {
	active : './assests/icons/heart-active.svg',
	nonActive : './assests/icons/heart.svg'
}
btnLove.forEach((e , i) => {
	e.addEventListener('click' , callAJAXLove)
})

function callAJAXLove(e) {
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
			icon.src = URL.nonActive
			icon.removeAttribute("data-active")
			console.log(icon)
			console.log('da xoac')
		} else {
			icon.src = URL.active
			icon.dataset.active = 'true'
		}
	}
	xhr.open('POST', url , false)
    xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhr.send('makhachhang='+makhachhang+'&masanpham='+masanpham)
}