accessing
sortTracklistFor: anObject 
	| tracks |
	tracks := anObject tracklist.
	[tracks
		sort: [:aTrack :anotherTrack |
			(aTrack metadata at: #'Track Number') asInteger < (anotherTrack metadata at: #'Track Number') asInteger]]
		on: Error
		do: [].
	^ tracks