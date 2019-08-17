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
//Aos
function Aos(){
  AOS.init({
		duration: 1200,
		once: true,
		disable: 'phone',
		offset: 400,
	});
}
///header fixed
function headerfixed(){
  if ($(window).scrollTop() > 0) {
		$('header').addClass('fixed')
	} else {
		$('header').removeClass('fixed')
	}
	$(window).on('scroll', function () {
		if ($(window).scrollTop() > 0) {
			$('header').addClass('fixed')
		} else {
			$('header').removeClass('fixed')
		}
	})

}
//////home-slider 
function homeslide(){
  var swiper = new Swiper('.home-slider .swiper-container', {
    slidesPerView: 1,
    autoplay: {
      delay: 3000,
      disableOnInteraction: false,
    },
    // If we need pagination
    pagination: {
      el: '.home-slider .home-swiper-pagination',
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
  var swiper = new Swiper('.duanslider .swiper-container', {
    slidesPerView: 1,
    loop: true,
    centeredSlides: true,
    spaceBetween: 50,
    navigation: {
      nextEl: '.swiper-btn-next',
      prevEl: '.swiper-btn-prev',
    },
  });
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
    desktopWrapper: '.searchbox',
    desktopMethod: 'insertAfter',
    breakpoint: 1025,
  }).watch() 
}
///////hotro toggle
function movehotro(){
  var movehotro = new MappingListener({
    selector: '.hotro ',
    mobileWrapper: '.toggle-menu',
    mobileMethod: 'appendTo',
    desktopWrapper: '.box-r',
    desktopMethod: 'appendTo',
    breakpoint: 1025,
  }).watch() 
}
//move language
function movelanguage(){
  var movelanguage = new MappingListener({
    selector: '.language ',
    mobileWrapper: '.box-r',
    mobileMethod: 'appendTo',
    desktopWrapper: '.call',
    desktopMethod: 'insertAfter',
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
    loop: true,
    pagination: {
      el: '.swiper-pagination',
      clickable: true,
    },
    // autoplay: {
    //   delay: 2500,
    //   disableOnInteraction: false,
    // },
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
    navigation: {
      nextEl: '.slider2-btn-next',
      prevEl: '.slider2-btn-prev',
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
function homeduanslider(){
  var swiper = new Swiper('.home-duan-slider .swiper-container', {
    slidesPerView: 1,
    centeredSlides: true,
    navigation: {
      nextEl: '.swiper-btn-next',
      prevEl: '.swiper-btn-prev',
    },
  });
}
function accordions(){
  $('.accordion').on('click', function() {
    if ($(this).siblings('.accordion-content').is(':hidden')) {
        $('.item').removeClass('active')
        $(this).parents('.item').addClass('active')
        // $('.item .accordion-content').slideUp()
        // $(this).siblings('.accordion-content').slideDown()
    } else {
        $('.item').removeClass('active')
        // $('.item .accordion-content').slideUp()
    }
})
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
        slidesPerView: 1.5,
        spaceBetween: 30
      },
      992: {
        slidesPerView: 3,
        spaceBetween: 30
      }
  },
  });
}
function toggleHeader(){
  $('.toggle-button').on('click',function(){
  $('.toggle-button').toggleClass('active')
  $('.toggle-menu').toggleClass('active')
  $('.backdrop').toggleClass('active')
});
$('.backdrop').on('click',function(){
  $('.toggle-button').removeClass('active')
  $('.toggle-menu').removeClass('active')
  $('.backdrop').removeClass('active')
});
$('.has-mega').on('click',function(){
  $('.mega-wrap').addClass('active')
});
$('.mega-back').on('click',function(){
  $('.mega-wrap').removeClass('active')
  
})
}
function mobilemenu(){
  $('.has-mega').on('click',function(){
    $(this).parents('.has-mega').find('.mega-wrap').addClass('active')
  })
  $('.has-mega .mega-wrap .mega-back').on('click', function() {
    $(this).parents('.has-mega').find('.mega-wrap').removeClass('active')
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
function sociallshare(){
  $("#shareInPopup").jsSocials({
  showLabel: false,
  showCount: false,
  shares: [{
    renderer: function() {
        var $result = $("<div>");

        var script = document.createElement("script");
        script.text = "(function(d, s, id) {var js, fjs = d.getElementsByTagName(s)[0]; if (d.getElementById(id)) return; js = d.createElement(s); js.id = id; js.src = \"//connect.facebook.net/ru_RU/sdk.js#xfbml=1&version=v2.3\"; fjs.parentNode.insertBefore(js, fjs); }(document, 'script', 'facebook-jssdk'));";
        $result.append(script);

        $("<div>").addClass("fb-share-button")
            .attr("data-layout", "button_count")
            .appendTo($result);

        return $result;
    }
},
{
  renderer: function() {
      var $result = $("<div>");

      var script = document.createElement("script");
      script.text = "window.twttr=(function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],t=window.twttr||{};if(d.getElementById(id))return t;js=d.createElement(s);js.id=id;js.src=\"https://platform.twitter.com/widgets.js\";fjs.parentNode.insertBefore(js,fjs);t._e=[];t.ready=function(f){t._e.push(f);};return t;}(document,\"script\",\"twitter-wjs\"));";
      $result.append(script);

      $("<a>").addClass("twitter-share-button")
          .text("Tweet")
          .attr("href", "https://twitter.com/share")
          .appendTo($result);

      return $result;
  }
},{
    renderer: function() {
        var $result = $("<div>");

        var script = document.createElement("script");
        script.src = "//platform.linkedin.com/in.js";
        $result.append(script);

        $("<script>").attr({ type: "IN/Share", "data-counter": "right" })
            .appendTo($result);

        return $result;
    }
},

]
});
}
$(document).ready(function(){
  sociallshare()
  Aos()
  headerfixed()
  langguage()
  movemenu()
  movehotro()
  searchbox()
  movecall()
  movelanguage()
  accordions()
  setBackground()
  homeslide()
  doitacslider()
  khachhangslider()
  toggleHeader()
  duanSlider()
  homeduanslider()
  sanphamphuhopSlider()
  chitietSliderGallery()
  chitietdichvuSlider1()
  chitietdichvuSlider2()
  // duanSlider1()
  hampurger()
  mobilemenu()
  tab()
//onclick button
  
//chuyen menu

});
//phan slider

