

var toogleMenu = document.getElementById('toogle-nabar');
var menuNabar = document.querySelector('.menu-main ul');
var closeMenuBar = document.querySelector('.heading-nabar');
var overlay = document.querySelector('.overlay');

toogleMenu.onclick = function(){
    menuNabar.classList.toggle('active');
    overlay.classList.toggle('open');
}
closeMenuBar.onclick = function(){
    menuNabar.classList.toggle('active');
    overlay.classList.toggle('open');
}
overlay.onclick = function(){
    menuNabar.classList.toggle('active');
    this.classList.toggle('open');
}

const searchIcon = document.querySelector('.search-icon');
const formSearch = document.querySelector('.form-search');
const closeFormSearch = document.querySelector('.close-form-search');


searchIcon.onclick = function(){
    formSearch.classList.toggle('open');
}

closeFormSearch.onclick = function(){
    formSearch.classList.toggle('open');
}
