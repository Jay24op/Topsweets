// navbar appears onclick
let navbar = document.querySelector('.navbar');
document.querySelector('#menu').onclick=() =>{
    navbar.classList.toggle('active');
}
//swiper
 const swiper = new Swiper('.slide-content', {
    slidesPerView: 1,
    spaceBetween: 30,
    loop: true,
    centerSlides:'true',
    autoplay: {
        delay:9500,
        disableOnInteraction:false,
    },
    observer:'true',
    fade: 'true',
    // grabCursor: 'true',
    pagination: {
      el: '.swiper-pagination',
      clickable: true,
      dynamicBullets: true,
    },
    navigation: {
      nextEl: '.swiper-button-next',
      prevEl: '.swiper-button-prev',
    },
     breakpoints: {
         700: {
           slidesPerView: 2,
         },
         1024: {
           slidesPerView: 3,
           spaceBetween: 20,
         },
       },
  });