// document.addEventListener("DOMContentLoaded", function(event) {

    // const showNavbar = (toggleId, navId, bodyId, headerId) =>{
    // const toggle = document.getElementById(toggleId),
    // nav = document.getElementById(navId),
    // bodypd = document.getElementById(bodyId),
    // headerpd = document.getElementById(headerId)
    
    // // Validate that all variables exist
    // if(toggle && nav && bodypd && headerpd){
    // toggle.addEventListener('click', ()=>{
    // // show navbar
    // nav.classList.toggle('show')
    // // change icon
    // toggle.classList.toggle('bx-x')
    // // add padding to body
    // bodypd.classList.toggle('body-pd')
    // // add padding to header
    // headerpd.classList.toggle('body-pd')
    // })
    // }
    // }
    
    // showNavbar('header-toggle','nav-bar','body-pd','header')
    
    // /*===== LINK ACTIVE =====*/
    // const linkColor = document.querySelectorAll('.nav_link')
    
    // function colorLink(){
    // if(linkColor){
    // linkColor.forEach(l=> l.classList.remove('active'))
    // this.classList.add('active')
    // }
    // }
    // linkColor.forEach(l=> l.addEventListener('click', colorLink))
    
    // // Your code to run since DOM is loaded and ready
    // });
    
    
    $('.btn').click(function(){
    $(this).toggleClass("click");
    $('.sidebar').toggleClass("show");
    });
    
    
    $('.sidebar ul li a').click(function(){
    var id = $(this).attr('id');
    $('nav ul li ul.item-show-'+id).toggleClass("show");
    $('nav ul li #'+id+' span').toggleClass("rotate");
    
    });
    
    $('nav ul li').click(function(){
    $(this).addClass("active").siblings().removeClass("active");
    });