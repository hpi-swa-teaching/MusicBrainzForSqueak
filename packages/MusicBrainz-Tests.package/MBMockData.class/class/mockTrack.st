as yet unclassified
mockTrack
	"MBID for this track should be 67526439-52c7-4b69-8b95-a93106fce2e4"
                | track |
                track := MBTrack new.
                track metadata 
                               at: #Title put: 'Epsilon - Original Remix';
                               at: #Album put: 'Epsilon';
                               at: #Artist put: 'Kygo';
                               at: #Genre: put: 'Tropical House';
                               at: #Year put: '2013'.
		    track filepath: 'C:/Users/Benutzer/test.mp3'.
                ^ track
