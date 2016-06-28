accessing
updateMetadataIn: aMBEntity set: aLabel to: aValue

	| valuesToAdoptInTracks |
	valuesToAdoptInTracks := #(#'Genre' #'Label' #'Year' #'Title') asOrderedCollection.
	
	aMBEntity metadata at: aLabel put: aValue.
	(aLabel = 'Album' and: aMBEntity isTrack)
		ifTrue: [
			| oldAlbum |
			oldAlbum := aMBEntity albumentity.
			"aMBEntity albumentity tracklist removeAllSuchThat: [:track | track filepath = aMBEntity filepath]."
			oldAlbum tracklist remove: aMBEntity ifAbsent:[].
			(oldAlbum tracklist size < 1)
				ifTrue: [self albums remove: oldAlbum ifAbsent: []].
			self addTrack: aMBEntity].
		
	(aMBEntity isAlbum and: (valuesToAdoptInTracks includes: aLabel))
		ifTrue: [
			aMBEntity tracklist do: [:each | 
				(aLabel = #'Title')
					ifTrue: [	self updateMetadataIn: each set: #'Album' to: aValue]
					ifFalse: [self updateMetadataIn: each set: aLabel to: aValue]
				]			
			].
