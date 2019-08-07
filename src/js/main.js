function setBackground() {
  $('[setBackground]').each(function() {
      var background = $(this).attr('setBackground')
      $(this).css({
          "background-image": "url(" + background + ")",
          "background-size": "cover",
          "background-position": "center center"
      })
  })
  $('[setBackgroundRepeat]').each(function() {
      var background = $(this).attr('setBackgroundRepeat')
      $(this).css({
          "background-image": "url(" + background + ")",
          "background-repeat": "repeat"
      })
  })
}
//////home-slider 
function homeslide(){
  var swiper = new Swiper('.home-slider .swiper-container', {
    slidesPerView: 1,
    navigation: {
      nextEl: '.swiper-btn-next',
      prevEl: '.swiper-btn-prev'
    },
    autoplay: {
      delay: 3000,
      disableOnInteraction: false,
    },
    // If we need pagination
    pagination: {
      el: '.home-slider .swiper-pagination',
      clickable: true,
      type: 'bullets'
    },
  });
};
///////đối tác slider 
function doitacslider(){
  var swiper = new Swiper('.doitac-slider .swiper-container', {
    slidesPerView: 3,
    slidesPerColumn: 2,
    spaceBetween: 30,
    navigation: {
      nextEl: '.swiper-btnnext',
      prevEl: '.swiper-btnprev'
    },
    // autoplay: {
    //   delay: 3000,
    //   disableOnInteraction: false,
    // },
    // If we need pagination
    pagination: {
      el: '.home-slider .swiper-pagination',
      clickable: true,
      type: 'bullets'
    },
    breakpoints: {
      // when window width is <= 320px
      320: {
        slidesPerView: 1,
        spaceBetween: 10
      },
      // when window width is <= 480px
      480: {
        slidesPerView: 2,
        spaceBetween: 20,
        autoplay: {
        delay: 2500,
        disableOnInteraction: false,
        },
      },
      // when window width is <= 640px
      768: {
        slidesPerView: 3,
        spaceBetween: 30
      },
      992: {
        slidesPerView: 2,
        spaceBetween: 30
      }
  },
  });
}
/////khách hàng slider 
function khachhangslider(){
  var swiper = new Swiper('.khachhang-slider .swiper-container', {
    slidesPerView: 3,
    slidesPerColumn: 2,
    spaceBetween: 30,
    navigation: {
      nextEl: '.swiper-btn-next',
      prevEl: '.swiper-btn-prev'
    },
    
    // autoplay: {
    //   delay: 3000,
    //   disableOnInteraction: false,
    // },
    // If we need pagination
    pagination: {
      el: '.home-slider .swiper-pagination',
      clickable: true,
      type: 'bullets'
    },
    breakpoints: {
      // when window width is <= 320px
      320: {
        slidesPerView: 1,
        spaceBetween: 10
      },
      // when window width is <= 480px
      480: {
      slidesPerView: 2,
      spaceBetween: 20,
      autoplay: {
      delay: 3000,
      disableOnInteraction: false,
    },
      },
      // when window width is <= 640px
      768: {
        slidesPerView: 3,
        spaceBetween: 30
      },
      992: {
        slidesPerView: 2,
        spaceBetween: 30
      }
  },
  });
}
///////du an slider 
function duanSlider(){
  var swiper = new Swiper('.duan-slider .swiper-container', {
    slidesPerView: 1,
    spaceBetween: 30,
    navigation: {
      nextEl: '.swiper-btn-next',
      prevEl: '.swiper-btn-prev'
    },
    autoplay: {
      delay: 4000,
      disableOnInteraction: false,
    },
    // If we need pagination
    pagination: {
      el: '.home-slider .swiper-pagination',
      clickable: true,
      type: 'bullets'
    },
  });
}

function toggleHeader(){
  $('.toggle-button').on('click',function(){
  $('.toggle-menu').toggleClass('active')
  $('.button').toggleClass('active')
  

});
// $('.backdrop').on('click',function(){
//   $('.toggle-menu').removeClass('active')
//   $('.backdrop').removeClass('active')
//   $('.backdrop').toggleClass('active')

// });

}


//chuyen menu
function movemenu(){
  var ListPage = new MappingListener({
  selector: 'header .ac-home-menu .menu-wrapper .main-menu',
  mobileWrapper: 'header .ac-home-menu .menu-wrapper .toggle-menu',
  mobileMethod: 'appendTo',
  desktopWrapper: 'header .ac-home-menu .menu-wrapper',
  desktopMethod: 'appendTo',
  breakpoint: 1025,
}).watch()
}

function searchbox(){
  var searchbox = new MappingListener({
    selector: '.searchbox',
    mobileWrapper: '.toggle-button',
    mobileMethod: 'insertAfter',
    desktopWrapper: '.hotro',
    desktopMethod: 'insertAfter',
    breakpoint: 1025,
  }).watch() 
}

function movecall(){
  var movecall = new MappingListener({
    selector: '.call',
    mobileWrapper: '.toggle-menu',
    mobileMethod: 'appendTo',
    desktopWrapper: '.language',
    desktopMethod: 'insertBefore',
    breakpoint: 1025,
  }).watch() 
}
///////hotro toggle
function movehotro(){
  var movehotro = new MappingListener({
    selector: '.hotro ',
    mobileWrapper: '.toggle-menu',
    mobileMethod: 'appendTo',
    desktopWrapper: '.language',
    desktopMethod: 'insertBefore',
    breakpoint: 1025,
  }).watch() 
}
/////end//////
function chitietSliderGallery(){
  var galleryThumbs = new Swiper('.gallery-thumbs', {
    spaceBetween: 10,
    slidesPerView: 4,
    freeMode: true,
    watchSlidesVisibility: true,
    watchSlidesProgress: true,
  });
  var galleryTop = new Swiper('.gallery-top', {
    spaceBetween: 10,
    navigation: {
      nextEl: '.swiper-btn-next',
      prevEl: '.swiper-btn-prev',
    },
    thumbs: {
      swiper: galleryThumbs
    }
  });
}
function chitietdichvuSlider1(){
  var swiper = new Swiper('.slider1 .swiper-container', {
    slidesPerView: 'auto',
    centeredSlides: true,
    spaceBetween: 30,
    pagination: {
      el: '.swiper-pagination',
      clickable: true,
    },
    autoplay: {
      delay: 2500,
      disableOnInteraction: false,
    },
    navigation: {
      nextEl: '.swiper-btn-next',
      prevEl: '.swiper-btn-prev',
    },
  });
}
function chitietdichvuSlider2(){
  var swiper = new Swiper('.slider2 .swiper-container', {
    slidesPerView: 3,
    spaceBetween: 30,
    pagination: {
      el: '.swiper-pagination',
      clickable: true,
    },
    breakpoints: {
      
      // when window width is <= 640px
      768: {
        slidesPerView: 1,
        spaceBetween: 30
      },
      992: {
        slidesPerView: 2,
        spaceBetween: 30
      }
  },
  });
}
function duanSlider1(){
  var swiper = new Swiper('.duanslider .swiper-container', {
    slidesPerView: 3,
    spaceBetween: 50,
    centeredSlides: true,
    slidesPerView: 'auto',
    navigation: {
      nextEl: '.swiper-btn-next',
      prevEl: '.swiper-btn-prev',
    },
  });
}
function accordions(){
$('.item').on('click',function(){
  $(this).toggleClass('active');
  

});
}

function langguage(){
  $('.lag-active').on('click',function(){
    $(this).siblings('.list-lag').toggleClass('active');
    $(this).toggleClass('active')
});
}
function hampurger(){
  var $hamburger = $(".hamburger");
  $hamburger.on("click", function(e) {
    $hamburger.toggleClass("is-active");
    // Do something else, like open/close menu
  });
}

///spphuhopSlider
function sanphamphuhopSlider(){
  var swiper = new Swiper('.spphuhop-slider .swiper-container', {
    slidesPerView: 3,
    spaceBetween: 30,
    navigation: {
      nextEl: '.swiper-btn-next',
      prevEl: '.swiper-btn-prev',
    },
    breakpoints: {
      320: {
        slidesPerView: 1,
        spaceBetween: 10
      },
      // when window width is <= 480px
      480: {
      slidesPerView: 2,
      spaceBetween: 20,
      
    },
      // when window width is <= 640px
      768: {
        slidesPerView: 2,
        spaceBetween: 30
      },
      992: {
        slidesPerView: 3,
        spaceBetween: 30
      }
  },
  });
}
function mobilemenu(){
  $('.has-dropdown').on('click',function(){
    if($(this).find('ul').is(':hidden')){
      $(this).find('ul').slideDown()
    }
    else{
      $(this).find('ul').slideUp()
    }
  })
  $('.has-mega').on('click',function(){
    if($(this).find('ul').is(':hidden')){
      $(this).find('ul').slideDown()
    }
    else{
      $(this).find('ul').slideUp()
    }
  })
}

function tab(){
  $('.button .link').click(function(){
		var tab_id = $(this).attr('data-tab');

		$('.button .link').removeClass('current');
		$('.tab-content').removeClass('current');

		$(this).addClass('current');
		$("#"+tab_id).addClass('current');
	})
}
$(document).ready(function(){
  langguage()
  movehotro()
  searchbox()
  movemenu()
  movecall()
  accordions()
  setBackground()
  homeslide()
  doitacslider()
  khachhangslider()
  toggleHeader()
  duanSlider()
  // dropdownmenu()
  sanphamphuhopSlider()
  chitietSliderGallery()
  chitietdichvuSlider1()
  chitietdichvuSlider2()
  duanSlider1()
  hampurger()
  mobilemenu()
  tab()
//onclick button
  
//chuyen menu

});
//phan slider

