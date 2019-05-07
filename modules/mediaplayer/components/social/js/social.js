const RutaWeb = '/basic/web/index.php/mediaplayer/social';
const TamFin = '600%';

$('body').on('click','.opcion', function() { 
	var IdBoton = $(this).attr('id');
	var Agregaface='';
	if (IdBoton == 'facebook') {
		Agregaface=$('#RaMediaPlayer').css('background-image').replace('url(','').replace(')','');
	} 
	if (IdBoton == 'url') {
		MostrarUrl();
	} else {
		window.open(PrefijoSocial(IdBoton)+encodeURIComponent(ArmarUrl()),'_blank');
	}
	
});

$('body').on('click','#cerrar', function() { 
	EscondeVisor();
});

function PrefijoSocial(id){
	if (id =="facebook") {
		return 'http://www.facebook.com/sharer.php?u=';
	} if (id=="twitter") {
		return 'http://twitter.com/home?status=';
	}
}

function ArmarUrl(){
	var channelID = Store.getInstance().activeChannel().id;
	var AlbumId = Store.getInstance().activeAlbum().id;
    
	var dir = ((location.href.split('/'))[0])+'//'+((location.href.split('/'))[2]) + "/";
	dir += RutaWeb+'/'+channelID+'/'+AlbumId;
	console.log(dir);
    return dir;
}

function MuestraVisor(){
	$('#barra-social-display').animate({'right':TamFin,'width':TamFin},1000,function(){
		$('#barra-social-display').html('<div id="text">'+ArmarUrl()+'</div> <div id="cerrar" title="Cerrar"><b>x</b></div>');
		$('#text').css('opacity','0');
		$('#text').animate({'opacity':'1'},500);
	});
}

function EscondeVisor(){
	$('#text').animate({'opacity':'0'},500,function(){
		$('#barra-social-display').html('');
		$('#barra-social-display').animate({'right':'0%','width':'100%'},1000);
	});
}

function MostrarUrl(){
	var estado = $('#barra-social-display').attr('data-activo');
	if (estado == '0') {
		$('#barra-social-display').attr('data-activo','1');
		MuestraVisor();
	} else {
		$('#barra-social-display').attr('data-activo','0');
		EscondeVisor();
	}
}
