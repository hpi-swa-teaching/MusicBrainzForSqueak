metadata-management
sortTracklistFor: aMBAlbum 
	| tracks |
	tracks := aMBAlbum tracklist.
	^ [tracks sort: [:aTrack :anotherTrack |
			(aTrack metadata at: #'Track Number') asInteger < (anotherTrack metadata at: #'Track Number') asInteger]]
		on: Error
		do: [aMBAlbum tracklist]