let btnLove = document.querySelectorAll('.card__icon')
const iconURL = {
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
		
	}
	
	if (icon.dataset.login && !icon.dataset.active) {
		callAJAX('addYeuThichController' , icon , icon.dataset.user , icon.dataset.product , false)
	}
}

function callAJAX(url , icon , makhachhang , masanpham , isDelete) {
	const xhr = new XMLHttpRequest();
    xhr.onload = function () {
		if (isDelete) {
			icon.src = iconURL.nonActive
			icon.dataset.active = null
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