var ChannelView = (function ($){
    
    function ChannelView(){
        
        var self = this;
        
        let _actualChannel;
        
        let controller = Subject.getInstance();
    
        let actualOffset;
        
        self.CHANNEL_NAME = document.getElementsByClassName(Config.ui.CHANNEL_NAME);
        
        self.CHANNEL_LIST_WRAPPER = document.querySelector('.'+Config.ui.CHANNEL_LIST);
        
        self.CHANNEL_LIST;      
        
        self.CHANNEL_VIEW_SIZE = 50 //30 de ancho + 10 de margin;
        
        self.setActiveChannel = function(li, data){
            li.classList.add('active');
            self.CHANNEL_NAME.innerHTML = data.name;
        }
        
        self.appendToDOMList = function(data){
            let li = document.createElement('li');
            
            if (data.status == true){
                self.setActiveChannel(li, data);
            }
            li.setAttribute('data-id', data.id);
            li.setAttribute('data-name', data.name);
            
            
            self.CHANNEL_LIST.appendChild(li);
        }
        
        self.createDynContainer = function(){
            let ul = document.createElement('ul');
            self.CHANNEL_LIST_WRAPPER.appendChild(ul);
            self.CHANNEL_LIST = document.querySelector('.'+Config.ui.CHANNEL_LIST+' ul');        

        }
        
        self.list = function(channels){
            self.createDynContainer();
            let size = 0;
            while( !channels.isLast() ){
                let ch = channels.next();
                self.appendToDOMList(ch);
                size++;
            }
            
            let width = size*self.CHANNEL_VIEW_SIZE;

            self.CHANNEL_LIST.style.width = width+'px';
            self.init(); 
            
        }
        
        self.init = function(){
            self.CHANNEL_LIST.style.right = '0px';
            $('.'+Config.ui.CHANNEL_CONTAINER).off().on('click', '.'+Config.ui.CHANNEL_LIST+' li', function(){
                document.getElementsByClassName(Config.ui.CHANNEL_NAME).textContent = this.getAttribute('data-name');
                _actualChannel = this.getAttribute('data-name');
                let channel = new Channel();
                channel.id = this.getAttribute('data-id');
                channel.name = this.getAttribute('data-name');                
                controller.notify(channel, 'CLICK_CHANNEL');
            });
            
            $('.'+Config.ui.CHANNEL_CONTAINER).on('mouseenter', '.'+Config.ui.CHANNEL_LIST+' li', function(){
                _actualChannel = document.getElementsByClassName(Config.ui.CHANNEL_NAME)[0].textContent;
                document.getElementsByClassName(Config.ui.CHANNEL_NAME)[0].textContent =  this.getAttribute('data-name');
                
            });

            $('.'+Config.ui.CHANNEL_CONTAINER).on('mouseleave', '.'+Config.ui.CHANNEL_LIST+' li', function(){
                 document.getElementsByClassName(Config.ui.CHANNEL_NAME)[0].textContent = _actualChannel;
            });

            $('.'+Config.ui.CHANNEL_CONTAINER).on('click', '.'+Config.ui.PREV_CHANNEL, function(){
                
                let right = self.CHANNEL_LIST.style.right.split('px');
                if (right[0]>0){
                    actualOffset = !actualOffset ? -self.CHANNEL_VIEW_SIZE : actualOffset - self.CHANNEL_VIEW_SIZE;
                    self.CHANNEL_LIST.style.right = actualOffset+'px';
                }
                
                controller.notify(null, 'NAV_PREV_CHANNEL');
            });            

            $('.'+Config.ui.CHANNEL_CONTAINER).on('click', '.'+Config.ui.NEXT_CHANNEL, function(){
                
                let rightLimit = self.CHANNEL_LIST_WRAPPER.offsetWidth;
                let right = self.CHANNEL_LIST.style.right.split('px');
                let rightSide =  self.CHANNEL_LIST.offsetWidth - parseInt(right[0]);
                
                if (rightSide>rightLimit){
                    actualOffset = !actualOffset ? self.CHANNEL_VIEW_SIZE : actualOffset + self.CHANNEL_VIEW_SIZE;

                    self.CHANNEL_LIST.style.right = actualOffset+'px';
                }
                controller.notify(null, 'NAV_NEXT_CHANNEL');
            });            
            
            
        }
                
    }
    
    var instance;
    
    return {
        getInstance: function(){
            if ( !instance )
                instance = new ChannelView();
            
            return instance;
        }
    }
    
    
})(jQuery);