let selecTab = function() {
    let btnTab = document.querySelectorAll('button.tab-item');
    btnTab.forEach(function(btn) {
        btn.onclick = function(e) {
            let btnsActive = document.querySelectorAll('button.tab-item--active');
            btnsActive.forEach(function(btnactive) {
                btnactive.classList.remove('tab-item--active')
            })
            this.classList.add('tab-item--active')
            let numberSelect = this.dataset.select
            let tabs = document.querySelectorAll('.personal-right');
            tabs.forEach(function(tab){
                tab.classList.remove('personal-right--active')
                if (tab.dataset.tab === numberSelect) {
                    tab.classList.add('personal-right--active')
                }
            }
            )
        }
    })
}
selecTab()