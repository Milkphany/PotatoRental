//BROWSE DROP DOWN MENU
$('body').ready(function() {
    // Add the 'hover' event listener to our drop down class
    $('.headermenu').mouseover(function() {
        // When the event is triggered, grab the current element 'this' and
        // find it's children '.sub_navigation' and display/hide them
        $(this).find('.sub_navigation').slideDown();
        var name = this.innerHTML;
        var moviehtml = "\
                      <a href ='#'>New Arrivals</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\
                      <a href ='#'>A - Z</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\
                      <a href ='#'>Genres</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\
                      <a href ='#'>Recommendations</a>\
                  ";

        $('#subheader').html(moviehtml);
        $('#login').slideUp();
        if (name === "Browse")
            $('#subheader').slideDown();
        else
            $('#subheader').slideUp();

    });
    

    $('#subheader').mouseleave(function() {
        $('#subheader').delay(200).slideUp();

    });
    
    $('#loginlink').click(function(){
        $('#subheader').slideUp();
        $('#login').slideToggle();
        $('#login > form > input:first').focus();
       
    });
});


$('body').ready(function() {
    $('#foo2').carouFredSel({
       
            
        scroll: 2,
        auto: false,
        prev: '#prev2',
        next: '#next2',
        mousewheel: false
       
    });
    
    $('#foo3').carouFredSel({     
        scroll: 2,
        auto: false,
        prev: '#prev3',
        next: '#next3',
        mousewheel: false
        
        
    });
});

$('body').ready(function(){
    $('.poster').click(function(){
        var link = this.id;
        link =link+".jsp";
        //load(link);
        $(window.location).attr('href', link);
    });
});

// ACCORDION FAQ
$('body').ready(function() {
    
    var allPanels = $('.accordion > dd').hide();
    
    $('.accordion > dt > a').click(function() {
    
        var disp = $(this).parent().next();
        if(disp.css("display") != "none")
            disp.hide();
        else
            disp.show();
        return false;
    });
    
    
    
    
});