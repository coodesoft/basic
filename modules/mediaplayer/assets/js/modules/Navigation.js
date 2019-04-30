var Navigation = (function($){
    
    function Navigation(){

    }
    
    var instance;
    
    return {
        getInstance: function(){
            if ( !instance )
                instance = new Navigation();
            
            return instance;
        }
    }
    
    
})(jQuery);