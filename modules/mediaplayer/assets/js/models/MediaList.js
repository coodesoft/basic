function MediaList(){
    Collection.call(this);
    
      this.load = function(collection){
        this.reset();
        let element;
        
          if (collection != undefined)
            for (let i =0; i < collection.length; i++){
                element['id'] = collection[i]['id'];
                element['name'] = collection[i]['name'];

                if (collection[i]['art'].length)
                    element['art'] = collection[i]['art'];

                this.elements.push(element);
            }

      }
}

MediaList.prototype = Object.create(Collection.prototype);