var Subject = (function(){
    
    
    function Subject(){
    
        let self = this;

        self.handlers = [];

        // Mejorar la lógica de almacenamiento
        // No chequea si se suscribe el mismo par (fn y context) mas de un vez
        self.subscribe = function(fn, context) {
            let element = new Object();
            element['type'] = context;
            element['fn'] = fn;
            self.handlers.push(element);
        }

        self.unsubscribe = function(fn) {
            self.handlers = this.handlers.filter(
                function(item) {
                    if (item['fn'] !== fn) {
                        return item;
                    }
                }
            );
        }

        self.notify = function(data, context){
            console.log('Notificación para: '+context);
            for(let t=0; t<this.handlers.length; t++){
                let observer = self.handlers[t];
                if (observer['type'] == context)
                    observer['fn'](data);
            }
        }
    
    }
    
    var instance;
    
    return {
        getInstance: function(){
            if ( !instance )
                instance = new Subject();
            
            return instance;
        }
    }
})();