TESTING: loadFromMB
testLoadMetadataFromMB 

| album |

album := MBAlbum new.
album mbid: 'c6442992-75a6-4e43-9c40-d34d0ffd1456'.
album loadMetadataFromMB.
album metadata at: #Year.
album metadata at: #Label.

self 
	assert: (album metadata at: #Media) 
	equals:  '12" Vinyl/12" Vinyl/CD';
	assert: (album metadata at: #Label) 
	equals:  'Because Music';
 	assert: (album metadata at: #Year) 
	equals:  '2013'
