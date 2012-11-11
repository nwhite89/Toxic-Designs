
        <!-- Add your site or application content here -->
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="<?php echo base_url(); ?>js/vendor/jquery-1.8.2.min.js"><\/script>')</script>
        <script src="js/plugins.js"></script>
        <script src="js/main.js"></script>
        <script src="js/bootstrap.js"></script>
        <script src="js/jquery.roundabout.min.js"></script>
        <script src="js/easing.js"></script>
        <script src="//platform.twitter.com/widgets.js" type="text/javascript"></script> 
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
            jQuery(function($){
                $('h1').on('click', function (e) {
                    var x = $('.tweet-banners.active');
                    var size = 40;
                    var sizeChange = setInterval(function () {
                        size-=3;
                        x.css({width: size + '%'});
                        if (size <= 0) {
                            x.hide();
                            x.removeClass('active');
                            x.next().addClass('active');
                            clearInterval(sizeChange);
                        }
                    },10);
                });
            })
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
                    });
                
                $('#tweet3d ul').roundabout({
                    minScale: 0.7
                    ,   easing: 'easeOutElastic'
                    ,   duration: 2000
                    ,   autoplay: 4000
                    ,   autoplayDuration: 4000
                });
        </script>
    </body>
</html>
