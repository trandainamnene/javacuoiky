const getGroupPass = document.querySelector('.group_password');
const getInput = getGroupPass.querySelector('input');
const getIcon = getGroupPass.querySelector('img');
getIcon.onclick = function(e) {
    let srcIcon = this.src.toString()
    if (srcIcon.includes('eye-on')) {
        srcIcon = srcIcon.replace('eye-on' , 'eye-off')
        getInput.type = 'password'
    } else {
        srcIcon = srcIcon.replace('eye-off' , 'eye-on')
        getInput.type = 'text'
    }
    this.src = srcIcon
    console.log(this.src)
}
