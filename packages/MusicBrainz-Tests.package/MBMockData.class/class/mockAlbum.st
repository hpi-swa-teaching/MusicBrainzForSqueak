as yet unclassified
mockAlbum  
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
