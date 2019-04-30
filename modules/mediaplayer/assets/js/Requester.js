var Requester = (function($){


  function Requester(){
      
      var self = this;
      
      const SERVER_URL       = 'http://localhost';
      
      const SITE_URL         = SERVER_URL + '/basic/web/index.php/mediaplayer/'
            
      let _connection;

      
      let _getAuthString = function(){
          return '/'+_connection['t']+'/'+_connection['token'];
      }

      let _getUrlParams = function(params, prettyUrl = true){
          let url = '';
          
          if (params)
            for(var key in params){
                let param = params[key];
                url += prettyUrl ? '/'+param : '&'+key+'='+param;
            }
              
          return url;
      }
      
      let controller = Subject.getInstance();
      
      self.request = function(urlTarget, success, error){
        
          let jxhr = $.ajax({
              url: urlTarget,
              type: 'GET',
              datType: 'json',
              success: function ( data, textStatus, jqXHR ){
                success(data, textStatus);
              },
              error: function ( data, textStatus, jqXHR ){
                error(data, textStatus);
              },
              
            });
      }
      
      self.getConnectionParmas = function(){
          
          let url = SITE_URL + 'connection-params';
          
          let success = function(data){ 
              data = JSON.parse(data);
              _connection = data; 
      
              controller.notify(data, 'SUCCESS_CONNECTION');
              
          };
          
          let error = function(data){ 
              console.log('Error!!');
              console.log('Se produjo un error en la conexión inicial');
          }

          this.request(url, success, error);
      }
  
      self.getContent = function(contentType, params, context){
          let url = SITE_URL + contentType + _getAuthString()+ _getUrlParams(params);
          
          let success = function(data){ 
              controller.notify(data, context);  
; 
          };
          
          let error = function(data){ 
              console.log('Se produjo un error al solicitar el contenido!!');
          }

          self.request(url, success, error);          
      }
      
    
        


  }

  var instance;

  return {
    getInstance: function(){
      if (!instance)
        instance = new Requester();
      return instance;
    }
  }
})(jQuery);