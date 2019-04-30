
function Album(){
            
    this.name;
    
    this.id;
    
    this.songs;
    
    this.art;
        
    this.artist;
       
    this.load = function(element){
        this.name = element['name'];
        this.id = element['id'];
        this.art = element['art'];
        this.artist = element['artist'];
 
        if (element['songs'] != undefined){
            this.songs = new Collection();   
            this.songs.load(element['songs'], [Song]);
        }
    }
                

        
          
}