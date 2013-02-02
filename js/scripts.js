$('#tweet3d li')
.bind({
    "reposition": function() {
        var degrees = $(this).data('roundabout').degrees,
            roundaboutBearing = $(this).parent().data('roundabout').bearing,
            rotateY = Math.round(roundaboutBearing - degrees);
        if($.browser.safari != true)
        {
            $(this).css({
                "-webkit-transform": "perspective(2000) rotateY(" + rotateY + "deg)",
                "-moz-transform": "perspective(2000) rotateY(" + rotateY + "deg)",
                "transform": "perspective(2000) rotateY(" + rotateY + "deg)"
            });
        }
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
    ,   enableDrag: true 
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

developmentProjects = function ()
{
    var projects = $('#home-projects'),
        activeItem = projects.find('.active');

    if (activeItem.next().index() == -1) 
    {
        activeItem.animate({opacity: '0'}, 490, 'swing', function () {
            activeItem.removeClass('active');
            projects.children().first().next().addClass('active');
            projects.children().first().next().animate({opacity: '1'}, 790, 'swing', function () {
            });
        });
    } else 
    {
        activeItem.animate({opacity: '0'}, 490, 'swing', function () {
            activeItem.removeClass('active').next().addClass('active');
            activeItem.next().animate({opacity: '1'}, 790, 'swing', function () {
            });
        });
            
    }
}


jQuery(function($){
    var x = setInterval("slideshow()", 6000);
    var y = setInterval("developmentProjects()", 6000);
    $('#home-projects .active').css('opacity', 1);
    $('#projects div.project').click(function () {
        var pid = $(this).attr('rel');
        $.ajax({
            url: base_url + 'index.php/development/viewProject/' + pid
        }).done(function (data){
            $('#project-view').html(data);
        });
        $('#project-view').show();
        $('div.backTop').show();
        $('html, body').animate(
            {
                scrollTop: $("#project-view").offset().top - 10
            }, 
            {
                queue: false,
                duration: 1000,
                complete: function () {
                    $('div.backTop').show();
                }
            }
        );
    });
    $('#labs div.project').click(function () {
        var pid = $(this).attr('rel');
        $.ajax({
            url: base_url + 'labs/viewProject/' + pid
        }).done(function (data){
            $('#project-view').html(data);
        });
        $('#project-view').show();
        $('div.backTop').show();
        $('html, body').animate(
            {
                scrollTop: $("#project-view").offset().top - 10
            }, 
            {
                queue: false,
                duration: 1000,
                complete: function () {
                    $('div.backTop').show();
                }
            }
        );
    });
    $('div.backTop').click(function() {
        $('html, body').animate(
            {
                scrollTop: $("html").offset().top
            }, 
            {
                queue: false,
                duration: 1000,
                complete: function () {
                    $('div.backTop').hide();;
                    $('#project-view').hide();
                    $('#project-view').html('<img src="'+base_url+'/img/ajax-loader.gif" />');
                }
        });
    });
    $('#commentbutton').click(function () {
        $(this).next().next('#form').slideToggle();
    });
});