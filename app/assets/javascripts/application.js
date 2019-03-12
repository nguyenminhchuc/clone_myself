// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .
//= require magnific-popup
//= require toastr

$(document).ready(function() {
    toastr.options = {
        "closeButton": false,
        "debug": false,
        "positionClass": "toast-top-center",
        "onclick": null,
        "showDuration": "300",
        "hideDuration": "1000",
        "timeOut": "5000",
        "extendedTimeOut": "1000",
        "showEasing": "swing",
        "hideEasing": "linear",
        "showMethod": "fadeIn",
        "hideMethod": "fadeOut"
    }
});

window.onscroll = function() {scrollFunction()};

function scrollFunction() {
  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
    document.getElementById("scrolltotop").style.display = "block";
  } else {
    document.getElementById("scrolltotop").style.display = "none";
  }
}

function topFunction() {
  document.body.scrollTop = 0;
  document.documentElement.scrollTop = 0;
}

// // https://github.com/hoangmirs/searchbox/
// (function($) {
//   function HSearchBox(options){
//     var defaults = {
//       url: '/search',
//       param: 'query',
//       dom_id: '#livesearch_results',
//       delay: 250,
//       minChars: 2,
//       loading_css: '#livesearch_loading',
//       del_id: '#livesearch_del',
//       form_id: '#livesearch_form',
//       dataType: 'text',
//       onInitSearch: function(){},
//       onStartSearch: function(){},
//       onFinishSearch: function(){}u
//     }

//     this.settings = $.extend({}, defaults, options || {})

//     this.loading = function() {
//       $(this.settings.loading_css).show()
//     }

//     this.idle = function() {
//       $(this.settings.loading_css).hide()
//     }

//     this.start = function() {
//       this.loading()
//       this.settings.onStartSearch()
//     }

//     this.stop = function() {
//       this.idle()
//       this.settings.onFinishSearch()
//     }

//     this.kill = function() {
//       $(this.settings.dom_id).fadeOut(50)
//       $(this.settings.dom_id).html('')
//       $(this.settings.del_id).fadeOut(100)
//     }

//     this.reset = function() {
//       $(this.settings.dom_id).html('')
//       $(this.settings.dom_id).fadeOut(50)
//       $(this.settings.form_id).val('')
//       $(this.settings.del_id).fadeOut(100)
//     }

//     this.resetTimer = function(timer) {
//       if (timer) clearTimeout(timer)
//     }

//     this.process = function(terms) {
//       var currentSearchBox = this
//       if (/\S/.test(terms)) {
//         $.ajax({
//           type: 'GET',
//           dataType : currentSearchBox.settings.dataType,
//           url: currentSearchBox.settings.url,
//           data: {
//             search: terms.trim()
//           },
//           complete: function(data) {
//             $(currentSearchBox.settings.del_id).fadeIn(50)
//             $(currentSearchBox.settings.dom_id).html(data.responseText)
//             if (!$(currentSearchBox.settings.dom_id).is(':empty')) {
//               $(currentSearchBox.settings.dom_id).fadeIn(100)
//             }
//             currentSearchBox.stop()
//           }
//         })
//         return false
//       } else {
//         currentSearchBox.kill()
//       }
//     }
//   }

//   $.fn.hsearchbox = function(configs) {
//     var hsearchbox = new HSearchBox(configs)
//     hsearchbox.settings.onInitSearch()
//     hsearchbox.idle()

//     return this.each(function() {
//       var $input = $(this)
//       $input
//         .keyup(function() {
//           if ($input.val() != this.previousValue) {
//             if (/\S/.test($input.val().trim()) && $input.val().trim().length > hsearchbox.settings.minChars) {
//               hsearchbox.resetTimer(this.timer)
//               this.timer = setTimeout(function() {
//                 hsearchbox.start()
//                 hsearchbox.process($input.val())
//               }, hsearchbox.settings.delay)
//             } else {
//               hsearchbox.kill()
//             }
//             this.previousValue = $input.val()
//           }
//         })
//     })
//   }
// })(jQuery)

// popup
$(document).ready(function() {
  $('.zoom-gallery').magnificPopup({
    delegate: 'a',
    type: 'image',
    closeOnContentClick: false,
    closeBtnInside: false,
    mainClass: 'mfp-with-zoom mfp-img-mobile',
    image: {
      verticalFit: true,
      titleSrc: function(item) {
        return item.el.attr('title') + ' &middot; <a class="image-source-link" href="'+item.el.attr('data-source')+'" target="_blank">image source</a>';
      }
    },
    gallery: {
      enabled: true
    },
    zoom: {
      enabled: true,
      duration: 300, // don't foget to change the duration also in CSS
      opener: function(element) {
        return element.find('img');
      }
    }

  });

  $('.popup-with-form').magnificPopup({
    type: 'inline',
    preloader: false,
    focus: '#user_email',

    // When elemened is focused, some mobile browsers in some cases zoom in
    // It looks not nice, so we disable it:
    callbacks: {
      beforeOpen: function() {
        if($(window).width() < 700) {
          this.st.focus = false;
        } else {
          this.st.focus = '#user_email';
        }
      }
    }
  });

});
