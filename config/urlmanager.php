<?php

return [
            'enablePrettyUrl' => true,
            'showScriptName' => true,
            'enableStrictParsing' => false,
            'rules' => [
                'welcome'   => 'site/index',
                'admin' => 'site/login',
				[
					'pattern' => 'novedades/<h>/<p>/<r>',
					'route' => 'PagEdit/main/present',
					'defaults' => ['h'=>'1','p'=>'5','r'=>''],		
				],
          		[
            		'pattern' => 'estatica/<i>', // agregado para ir a alguna pagina estatica
            		'route' => 'PagEdit/main/ver', 
            	],
            	[
					'pattern' => 'imagenalbum/<a>',
					'route' => 'mediaplayer/wp/imagenalbum',
							
					],
                'editor-paginas' => 'PagEdit/main/inicio', 
				'edit-estatica' => 'PagEdit/main/editar', 
				'guardar-estatica' => 'PagEdit/main/guardar', 
                'mediaplayer' => 'mediaplayer/wp/index',
                'mediaplayer/social/<c:\d+>/<a:\d+>' => 'mediaplayer/wp/social/',
                'mediaplayer/<action>' => 'mediaplayer/wp/<action>',                
                'mediaplayer/<action>/<t>/<token>/' => 'mediaplayer/wp/<action>',
                'mediaplayer/<action>/<t>/<token>/<id>' => 'mediaplayer/wp/<action>',
                
                'tageditor' => 'mp3editor/music-editor/index',
                'tageditor/<action:(navigate|set-tags|get-tags)>' => 'mp3editor/music-editor/<action>',
                
                [
                    'pattern' => 'mediaplayer/<action:(connection-params|obtener-lista|social|social2|index)>/<c:\d+>/<a:\d+>/<x>',
                    'route' => 'mediaplayer/wp/<action>',
                    'defaults' => ['i' => '', 'c'=> '', 'a'=>'', 'x' => 'http://www.radioalbum.com.ar/basic/web/images/logora.png'],
                    
                ],
                [
					'pattern' => 'suscriptor/<action:(suscribe|confirmation)>/<i:\d+>/<c:\w+>',
					'route' =>  'suscriptor/default/<action>',
					'defaults' => ['i'=>'', 'c'=>''],
				],
            ],
         ];
