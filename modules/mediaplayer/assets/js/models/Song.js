function Song(){
    this.name;
    this.id;
    
    this.load =  function(element){
        this.name = element['name'];
        this.id = element['id'];
    }
}