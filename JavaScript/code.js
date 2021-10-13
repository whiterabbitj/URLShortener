
(function () {
    "use strict";
    
    // hamburgerButton();
    // headerText();
    pixelate();
    var cookieAlert = document.querySelector(".cookiealert");
    var acceptCookies = document.querySelector(".acceptcookies");

    if (!cookieAlert) {
        return;
    }

    cookieAlert.offsetHeight; 

    // Show the alert if we cant find the "acceptCookies" cookie
    if (!getCookie("acceptCookies")) {
        cookieAlert.classList.add("show");
    }

    // When clicking on the agree button, create a 1 year
    // cookie to remember user's choice and close the banner
    
    acceptCookies.addEventListener("click", function () {
        setCookie("acceptCookies", true, 365);
        cookieAlert.classList.remove("show");
    });


    function setCookie(cname, cvalue, exdays) {
        var d = new Date();
        d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000));
        var expires = "expires=" + d.toUTCString();
        document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
    }

    function getCookie(cname) {
        var name = cname + "=";
        var decodedCookie = decodeURIComponent(document.cookie);
        var ca = decodedCookie.split(';');
        for (var i = 0; i < ca.length; i++) {
            var c = ca[i];
            while (c.charAt(0) === ' ') {
                c = c.substring(1);
            }
            if (c.indexOf(name) === 0) {
                return c.substring(name.length, c.length);
            }
        }
        return "";
    }


    function pixelate(){
        let pix = document.getElementsByClassName("pixel");
    
        for (var i = 0; i < pix.length; i++) {
            pix[i].style.animationDelay = Math.ceil(Math.random()*5000)+"ms";
        }
    }
    
    //
    // function hamburderText(){
    //     var $menu = $('.Menu-list'),
    //         $item = $('.Menu-list-item'),
    //         w = $(window).width(), //window width
    //         h = $(window).height(); //window height
    //
    //     $(window).on('mousemove', function(e) {
    //         var offsetX = 0.5 - e.pageX / w, //cursor position X
    //             offsetY = 0.5 - e.pageY / h, //cursor position Y
    //             dy = e.pageY - h / 2, //@h/2 = center of poster
    //             dx = e.pageX - w / 2, //@w/2 = center of poster
    //             theta = Math.atan2(dy, dx), //angle between cursor and center of poster in RAD
    //             angle = theta * 180 / Math.PI - 90, //convert rad in degrees
    //             offsetPoster = $menu.data('offset'),
    //             transformPoster = 'translate3d(0, ' + -offsetX * offsetPoster + 'px, 0) rotateX(' + (-offsetY * offsetPoster) + 'deg) rotateY(' + (offsetX * (offsetPoster * 2)) + 'deg)'; //poster transform
    //
    //         //get angle between 0-360
    //         if (angle < 0) {
    //             angle = angle + 360;
    //         }
    //
    //         //poster transform
    //         $menu.css('transform', transformPoster);
    //
    //         //parallax for each layer
    //         $item.each(function() {
    //             var $this = $(this),
    //                 offsetLayer = $this.data('offset') || 0,
    //                 transformLayer = 'translate3d(' + offsetX * offsetLayer + 'px, ' + offsetY * offsetLayer + 'px, 20px)';
    //
    //             $this.css('transform', transformLayer);
    //         });
    //     });
    //
    // }
    
    
    function hamburgerButton() {
        // DOM is loaded and ready for manipulation here
        var navaBarButton = document.querySelector(".third-button");
        var animation = document.querySelector(".animated-icon3");

        navaBarButton.addEventListener('click', function () {
            animation.classList.toggle('open');
        });
    }
    
})
();

    
    




