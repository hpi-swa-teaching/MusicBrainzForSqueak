as yet unclassified
mockTrack21
	"MBID for this track should be ff827e98-6c22-4078-b5fd-40b92087d6c0"
                | track |
                track := MBTrack new.
                track metadata 
                               at: #Title put: 'Hey Now';
                               at: #Album put: 'If You Wait';
                               at: #Artist put: 'London Grammar'.
		    track filepath: 'C:/Users/Benutzer/test21.mp3'.
                ^ track
