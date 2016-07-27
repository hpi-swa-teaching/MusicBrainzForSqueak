as yet unclassified
mockTrack23
	"MBID for this track should be b08a2ddd-004d-4eea-86be-6ba5334e0f51"
                | track |
                track := MBTrack new.
                track metadata 
                               at: #Title put: 'Shyer';
                               at: #Album put: 'If You Wait';
                               at: #Artist put: 'London Grammar'.
		    track filepath: 'C:/Users/Benutzer/test23.mp3'.
                ^ track
