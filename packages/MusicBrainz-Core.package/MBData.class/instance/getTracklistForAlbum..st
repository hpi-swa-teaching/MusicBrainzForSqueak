accessing
getTracklistForAlbum: anObject
	(anObject isAlbum) 
		ifTrue: [
			| tracksInOrder |
			tracksInOrder := anObject tracklist.
			[tracksInOrder sort: [:aTrack :anotherTrack |
				((aTrack metadata at: #'Track Number') asInteger) < ((anotherTrack metadata at: #'Track Number') asInteger)]]
			on: Error
			do: [tracksInOrder := anObject tracklist].
			^ tracksInOrder]
		ifFalse: [^ OrderedCollection new]