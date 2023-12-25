let reduceBtns = document.querySelectorAll('.cart-table-body-data__qty-btn.reduce-js')
let increaseBtns = document.querySelectorAll('.cart-table-body-data__qty-btn.increase-js')
reduceBtns.forEach((reduceBtn , i) => {
		const xhr = new XMLHttpRequest();
		let getval = 0
		xhr.onload = function() {
			getval = this.responseText
		}
		xhr.open('POST' , 'soluongController' , false)
		xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
		xhr.send('masanpham=' + reduceBtn.dataset.id + '&soluongmua=0')
		if (getval == 1) {
			reduceBtn.classList.add('cart-table-body-data__qty-btn--disabled')
			reduceBtn.disabled = 'true'
		}
		reduceBtn.onclick = function(e) {
			changeValue(reduceBtn , false)
	}
})

increaseBtns.forEach((increaseBtn , i) => {
	increaseBtn.onclick = function(e) {
		changeValue(increaseBtn , true)
	}
})

const changeValue = function(btn ,isIncrease) {
	const getParent = btn.parentElement
	let getval = 0
	const xhr = new XMLHttpRequest();
	xhr.onload = function() {
		console.log(this.responseText , "aisjdisjdi")
		getval = this.responseText
	}
	xhr.open('POST' , 'soluongController' , false)
	xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	xhr.send('masanpham=' + btn.dataset.id + '&soluongmua=0')
	if (isIncrease) {
		const xhr = new XMLHttpRequest();
		xhr.onload = function() {
			getval = this.responseText
			getParent.querySelector('.cart-table-body-data__qty-value').innerText = getval
		}
		xhr.open('POST' , 'soluongController' , false)
		xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
		xhr.send('masanpham=' + btn.dataset.id + '&soluongmua=1')
		if (getval > 1) {			
			if (getParent.querySelector('.reduce-js').classList.contains('cart-table-body-data__qty-btn--disabled')) {
				getParent.querySelector('.reduce-js').classList.remove('cart-table-body-data__qty-btn--disabled')
				getParent.querySelector('.reduce-js').disabled = false
			}
		}
	} 	
	else {
		console.log(getval)
		if (getval > 1) {
			console.log(getval)
			const xhr = new XMLHttpRequest();
			xhr.onload = function() {
				console.log(this.responseText)
				getval = this.responseText
				getParent.querySelector('.cart-table-body-data__qty-value').innerText = getval
			}
			xhr.open('POST' , 'soluongController' , false)
			xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
			xhr.send('masanpham=' + btn.dataset.id + '&soluongmua=-1')
		}
		if (getval == 1)  {
			btn.classList.add('cart-table-body-data__qty-btn--disabled')			
			btn.disabled = 'true'
		}
	}
	calcAmountSum(btn.closest('.cart-table-body__row') , btn)
}

let calcAmountSum = function (row , btn) {
	let getPrice = row.querySelector('.cart-table-body-data__total');
	let amountPrice = document.querySelector('.cart-total__content.ajax_amount');
	const xhr = new XMLHttpRequest();
	xhr.onload = function() {
		console.log(JSON.parse(this.responseText))
		getPrice.innerText = JSON.parse(this.responseText).tongTienCTHoaDon;
		amountPrice.innerText = JSON.parse(this.responseText).tongTienHoaDon + ' VND';
	}
	xhr.open('POST' , 'amountPrice' , false)
	xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	xhr.send('masanpham=' + btn.dataset.id)
}

