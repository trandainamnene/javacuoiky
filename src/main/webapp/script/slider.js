let getList = document.querySelector('.product__list')
let startX
let scrollLeft 
let mouseDown = false

let start = function(e) {
	mouseDown = true
	startX = e.pageX || e.touches[0].pageX
	scrollLeft = getList.scrollLeft
}

let move = function(e) {
	if (!mouseDown) return
	const x = e.pageX || e.touches[0].pageX
	const distance = x - startX
	//console.log(distance)
	getList.scrollLeft = scrollLeft - distance 
	console.log(getList.querySelectorAll('a'))
}

let end = function(e) {
	mouseDown = false
	getList.querySelectorAll('a').forEach((e , i) => {
		e.onclick = null
	})
}

getList.addEventListener('mousedown' , start)
getList.addEventListener('touchstart' , start)

getList.addEventListener('mousemove', move);
getList.addEventListener('touchmove', move);

getList.addEventListener('mouseleave', end);
getList.addEventListener('mouseup', end);
getList.addEventListener('touchend', end);