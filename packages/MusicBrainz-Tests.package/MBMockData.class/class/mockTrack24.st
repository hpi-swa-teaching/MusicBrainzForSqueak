as yet unclassified
mockTrack24
	"MBID for this track should be 2cc9e1cc-7b4a-4400-91ac-e9175daf8ebe"
                | track |
                track := MBTrack new.
                track metadata 
                               at: #Title put: 'Wasting My Young Years';
                               at: #Album put: 'If You Wait';
                               at: #Artist put: 'London Grammar'.
		    track filepath: 'C:/Users/Benutzer/test.mp3'.
                ^ track
