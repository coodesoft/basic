function Collection(){

      this.elements = [];
      
      this.horizon = -1;
 
      this.reset = function(){
         this.elements = [];
      }

      this.load = function(collection, constructor){
        this.reset();
        let element;
        for (let i =0; i < collection.length; i++){
            element = new constructor[0]();
            element.load(collection[i]);

            this.elements.push(element);
        }
      }

}

Collection.prototype.add = function(newObject){
    this.elements.push(newObject);
}

Collection.prototype.next = function(){
    this.horizon++;
    return this.elements[this.horizon];
}
      
Collection.prototype.prev = function(){
    this.horizon--;
    return this.elements[this.horizon];
}

Collection.prototype.getActual = function(){
    return this.elements[this.horizon];
}

Collection.prototype.isLast = function(){
  return (this.horizon == this.elements.length - 1);
}
      
Collection.prototype.isFirst = function(){
  return (this.horizon == 0);
}

