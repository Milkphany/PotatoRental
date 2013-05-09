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
    $('#foo0').carouFredSel({    
        scroll: 2,
        auto: false,
        prev: '#prev0',
        next: '#next0',
        mousewheel: false
    });
    
    $('#foo1').carouFredSel({    
        scroll: 2,
        auto: false,
        prev: '#prev1',
        next: '#next1',
        mousewheel: false
    });
    
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
    
    $('#foo4').carouFredSel({    
        scroll: 2,
        auto: false,
        prev: '#prev4',
        next: '#next4',
        mousewheel: false
    });
    
    $('#foo5').carouFredSel({    
        scroll: 2,
        auto: false,
        prev: '#prev5',
        next: '#next5',
        mousewheel: false
    });
    
    $('#foo6').carouFredSel({    
        scroll: 2,
        auto: false,
        prev: '#prev6',
        next: '#next6',
        mousewheel: false
    });
    
    $('#foo7').carouFredSel({    
        scroll: 2,
        auto: false,
        prev: '#prev7',
        next: '#next7',
        mousewheel: false
    });
    
    $('#foo8').carouFredSel({    
        scroll: 2,
        auto: false,
        prev: '#prev8',
        next: '#next8',
        mousewheel: false
    });
    
    $('#foopop').carouFredSel({    
        scroll: 2,
        auto: {
            duration        :   7500,
            easing          :   "linear",
            timeoutDuration :   0,
            pauseOnHover    :   "immediate"
            
        },
        prev: '#prevp',
        next: '#nextp',
        mousewheel: false
        
    });
    
    $('#foorec').carouFredSel({    
        scroll: 2,
        auto: {
            duration        :   7500,
            easing          :   "linear",
            timeoutDuration :   0,
            pauseOnHover    :   "immediate"
            
        },
        prev: '#prevp',
        next: '#nextp',
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
