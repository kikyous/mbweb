// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require kindeditor
//= require bootstrap.min.js
//= require jquery.transit.min.js

$(function(){
    progress = $("<div style='margin-top: 4px;' class='progress progress-striped active'><div  class='bar' style='width: 100%;'></div></div>");
    $("#left_side li").click(function(){
        var item=$(this);
        try{
            ajaxGet.abort();
        }
        catch(e){}

        var href=item.children("a").attr("href");
        var other=item.parent('ul').find("li.active");
        if (other.index()!=-1 && item.index() == other.index())return false;
        other.removeClass("active");

        item.addClass("active");
        item.animate({height:"65px"},"slow",callback=function(){
            other.animate({height:"38px"},"slow" );
        });
        progress.fadeOut("normal",function(){item.append(progress);});
        progress.fadeIn('normal');
        ajaxGet = $.get(href+"?layout=false",function(result){
            $('#slideBox').slideUp(function(){
                $("#media").fadeOut(function(){ 
                    $(this).html(result);
                    $(this).fadeIn();
                });
            });

            progress.fadeOut("slow");
            item.animate({height:"38px"},"slow" ,function(){progress.stop().hide()});
        });
        return false;
    });
    $("#logo").mouseover(function(){
        $(this).transition({ rotate: '30deg' });
    });
    $("#logo").mouseout(function(){
        $(this).transition({ rotate: '0deg' });
    });
    $("#left_side").affix({
        offset: {
            top: function () { return $(window).width() <= 980 ? 290 : 210 }
        }
    });
})
