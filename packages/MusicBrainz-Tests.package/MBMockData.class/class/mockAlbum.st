as yet unclassified
mockAlbum  
	"MBID for this album should be 1cdbe3b6-99bb-4a50-9950-29ebc4fcb194"
                | album |
                album := MBAlbum new.
                album metadata 
                               at: #Title put: 'Epsilon';
                               at: #Artist put: 'Kygo';
                               at: #Label put: 'Ensis Records';
                               at: #Media put: 'Digital Media'.
                album tracklist: OrderedCollection new. 
                album tracklist add: MBMockData mockTrack.
                ^ album
