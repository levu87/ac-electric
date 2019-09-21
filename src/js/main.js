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
      delay: 6000,
      disableOnInteraction: false,
    },
    effect: 'fade',
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
//mappings
function mappingMenu() {
	return new MappingListener({
		selector: ".menu-wrapper",
		mobileWrapper: ".toggle-menu",
		mobileMethod: "appendTo",
		desktopWrapper: ".ac-home-menu",
		desktopMethod: "prependTo",
		breakpoint: 1025
	}).watch();
}
function mappingHotro() {
	return new MappingListener({
		selector: ".hotro",
		mobileWrapper: ".toggle-menu",
		mobileMethod: "appendTo",
		desktopWrapper: ".box-r",
		desktopMethod: "prependTo",
		breakpoint: 1025
	}).watch();
}
function mappingCall() {
	return new MappingListener({
		selector: ".call",
		mobileWrapper: ".toggle-menu",
		mobileMethod: "appendTo",
		desktopWrapper: ".box-r .searchbox",
		desktopMethod: "insertAfter",
		breakpoint: 1025
	}).watch();
}
function mappingSearchbox() {
	return new MappingListener({
		selector: ".searchbox",
		mobileWrapper: ".toggle-menu .main-menu",
		mobileMethod: "insertAfter",
		desktopWrapper: ".box-r .hotro",
		desktopMethod: "insertAfter",
		breakpoint: 1025
	}).watch();
}

/////end//////
function chitietSliderGallery(){
  var galleryThumbs = new Swiper(
		".gallery-thumbs",
		{
			spaceBetween: 20,
			slidesPerView: 4,
			freeMode: true,
			watchSlidesVisibility: true,
			watchSlidesProgress: true
		}
	);
	var galleryTop = new Swiper(".gallery-top", {
		spaceBetween: 10,
		effect: "fade",
		fadeEffect: {
			crossFade: true
    },
    navigation: {
      nextEl: '.swiper-btn-next',
      prevEl: '.swiper-btn-prev',
    },
		thumbs: {
			swiper: galleryThumbs,
			slidesPerView: 4
		}
	});
}
function chitietdichvuSlider1(){
  var swiper = new Swiper('.slider1 .swiper-container', {
    slidesPerView: 'auto',
   
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
}
function mobilemenu(){
  $('.has-mega .mega-show').on('click', function() {
    $(this).parents('.has-mega').find('.mega-wrap').addClass('active')
})
$('.has-mega .mega-back').on('click', function() {
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
function autorun(){
  $('.number').each(function () {
    $(this).prop('Counter',0).animate({
        Counter: $(this).text()
    }, {
        duration: 5000,
        easing: 'swing',
        step: function (now) {
            $(this).text(Math.ceil(now));
        }
    });
});
}
$(document).ready(function(){
  sociallshare()
  Aos()
  headerfixed()
  langguage()
  //mappings
  mappingMenu()
  mappingHotro()
  mappingSearchbox()
  mappingCall()
  // end mapping
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
  autorun()
//onclick button
  
//chuyen menu

});
//phan slider

