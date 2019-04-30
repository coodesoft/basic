function Channel(){
    
    this.id;
    
    this.name;
    
    this.albums = new Collection();
    
    this.status = false;
    
    this.load = function(element){
        
        this.id = element['id'];
        this.name = element['name'];
        
        if (this.name == Config.defaultChannel)
            this.status = true;
        
        if (element['albums'] != undefined)
            this.albums.load(element['albums'], [Album]);



    }
}