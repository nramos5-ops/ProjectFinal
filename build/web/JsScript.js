/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function() {
    $("#slider").bxSlider({
        auto: true,
        random: true,
        captions: true,
        pager: true,
        pagerType: 'short',
        pause: 5000,
        minSlides: 1,
        maxSlides: 1,
        slideWidth: 500,
        slideMargin: 20
    });
});

$(document).ready(function() {
    $("#accordion").accordion({
        heightStyle: "content",
        collapsible: true
    });
    
});

$(document).ready(function(){
    $(".scroll-top").click(function() {
        $("html, body").animate({ 
            scrollTop: 0 
        }, "fast");
        return false;
    });
});

$(document).ready(function() {
    $.getJSON("team.json", function(data){
        $.each(data, function() {
            $.each(this, function(key, value) {
                $("#team").append(
                    "Name: " + value.name + "<br>" + 
                    "Title: " + value.title + "<br>" + 
                    "Bio: " + value.bio + "<br><br>"
                );
            });
        }); 
    });
});

$(document).ready(function() {
    $.getJSON("deals.json", function(data){
        $.each(data, function() {
            $.each(this, function(key, value) {
                $("#deals").append(
                    "Item: " + value.item + "<br>" + 
                    "Sale: " + value.sale + "<br>" 
                );
            });
        }); 
    });
});

