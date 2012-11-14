
        <!-- Add your site or application content here -->
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="<?php echo base_url(); ?>js/vendor/jquery-1.8.2.min.js"><\/script>')</script>
        <script src="js/plugins.js"></script>
        <script src="js/main.js"></script>
        <script src="js/bootstrap.js"></script>
        <script src="js/jquery.roundabout.min.js"></script>
        <script src="js/easing.js"></script>
        <!--script src="//platform.twitter.com/widgets.js" type="text/javascript"></script--> 
        <!-- Google Analytics: change UA-XXXXX-X to be your site's ID. -->
        <script>
            var _gaq=[['_setAccount','UA-XXXXX-X'],['_trackPageview']];
            (function(d,t){var g=d.createElement(t),s=d.getElementsByTagName(t)[0];
            g.src=('https:'==location.protocol?'//ssl':'//www')+'.google-analytics.com/ga.js';
            s.parentNode.insertBefore(g,s)}(document,'script'));
        </script>
        <script>
            $('.navi-button').on('click', function(e){
                $('.navi-mobile').slideToggle();
            });
        </script>
        <script>
        		$('#tweet3d li')
                .bind({
                    "reposition": function() {
                        var degrees = $(this).data('roundabout').degrees,
                            roundaboutBearing = $(this).parent().data('roundabout').bearing,
                            rotateY = Math.round(roundaboutBearing - degrees);
                        $(this).css({
                            "-webkit-transform": "perspective(2000) rotateY(" + rotateY + "deg)",
                            "-moz-transform": "perspective(2000) rotateY(" + rotateY + "deg)",
                            "transform": "perspective(2000) rotateY(" + rotateY + "deg)"
                        });
                    }
                })
                .show()
                ;
                
                $('#tweet3d ul').roundabout({
                    minScale: 0.7
                    ,   easing: 'easeOutElastic'
                    ,   duration: 1000
                    ,   autoplay: 4000
                    ,   autoplayDuration: 4000
                });
                slideshow = function () {
                    var activeItem = $('#tweets').children('.active');

                    if (activeItem.next().index() == -1) {
                        activeItem.animate({left: '-=350', opacity: '0' }, 490, 'swing', function () {
                            $('#tweets').children().first().animate({opacity: '1'}, 1200, 'swing', function () {
                                activeItem.removeClass('active').css('left', '5%');
                                $('#tweets').children().first().addClass('active');
                            });
                        });
                    } else {
                        activeItem.animate({left: '-=350', opacity: '0' }, 490, 'swing', function () {
                            activeItem.next().animate({opacity: '1'}, 1200, 'swing', function () {
                                activeItem.css('left', '5%');
                                activeItem.removeClass('active').next().addClass('active');
                            });
                        });
                    }
                }


                jQuery(function($){
                    var x = setInterval("slideshow()", 6000);
                });
        </script>
    </body>
</html>
