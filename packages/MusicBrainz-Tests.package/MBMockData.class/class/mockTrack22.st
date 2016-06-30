as yet unclassified
mockTrack22
	"MBID for this track should be 9f2a724b-efe9-4e1e-8aea-3d14367edd1c"
                | track |
                track := MBTrack new.
                track metadata 
                               at: #Title put: 'Stay Awake';
                               at: #Album put: 'If You Wait';
                               at: #Artist put: 'London Grammar'.
		    track filepath: 'C:/Users/Benutzer/test.mp3'.
                ^ track
