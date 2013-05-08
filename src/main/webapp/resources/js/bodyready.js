//BROWSE DROP DOWN MENU
$('body').ready(function() {
    // Add the 'hover' event listener to our drop down class
    $('.headermenu').mouseover(function() {
        // When the event is triggered, grab the current element 'this' and
        // find it's children '.sub_navigation' and display/hide them
        /*$(this).find('.sub_navigation').slideDown();
         * 
         */
        var name = this.innerHTML;
        
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
        link = "/movies/" + link;
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

$('body').ready(function() {
  $(function() {
                $( "#sortable" ).sortable({
                    placeholder: "ui-state-highlight"
                });
                $( "#sortable" ).disableSelection();
            });  
})


$(document).ready(function() {
                $('.toolmeow').tooltipster({
                    animation: 'fade',
                    arrow: true,
                    arrowColor: '',
                    content: '',
                    delay: 200,
                    fixedWidth: 300,
                    maxWidth: 300,
                    functionBefore: function(origin, continueTooltip) {
                        continueTooltip();
                    },
                    functionReady: function(origin, tooltip) {},
                    functionAfter: function(origin) {},
                    icon: '(?)',
                    iconDesktop: false,
                    iconTouch: false,
                    iconTheme: '.tooltipster-icon',
                    interactive: true,
                    interactiveTolerance: 650,
                    offsetX: 0,
                    offsetY: -40,
                    onlyOne: true,
                    position: 'top',
                    speed: 350
                });
                
                 $('.toolteep').tooltipster({
                    interactive: true,
                    interactiveTolerance: 650,
                    offsetX: -100,
                    onlyOne: true,
                    position: 'right'
                    
                });
            });
