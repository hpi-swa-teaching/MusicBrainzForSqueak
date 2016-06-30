as yet unclassified
mockAlbum2  
	"MBID for this album should be f3b4f700-b942-4408-a8d4-aef4f93ce2ca"
                | album |
                album := MBAlbum new.
                album metadata 
                               at: #Title put: 'If You Wait';
                               at: #Artist put: 'London Grammar';
                               at: #Label put: 'Metal & Dust Recordings Ltd.';
                               at: #Media put: 'CD/CD'.
                album tracklist: OrderedCollection new. 
                album tracklist add: MBMockData mockTrack21.
                ^ album
