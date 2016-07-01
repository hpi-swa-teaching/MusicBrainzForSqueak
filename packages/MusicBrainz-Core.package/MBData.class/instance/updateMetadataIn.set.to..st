accessing
updateMetadataIn: aMBEntity set: aLabel to: aValue

	| valuesToAdoptInTracks |
	valuesToAdoptInTracks := #(#'Genre' #'Label' #'Year' #'Title') asOrderedCollection.
	(aValue = '')
		ifTrue: [aMBEntity metadata removeKey: aLabel ifAbsent: []. ^ self].
	
	aMBEntity metadata at: aLabel put: aValue.
	(aLabel = 'Album' and: aMBEntity isTrack)
		ifTrue: [self moveToNewAlbum: aMBEntity].
		
	(aMBEntity isAlbum and: (valuesToAdoptInTracks includes: aLabel))
		ifTrue: [
			aMBEntity tracklist do: [:each | 
				(aLabel = #'Title')
					ifTrue: [	each metadata at: #'Album' put: aValue]
					ifFalse: [self updateMetadataIn: each set: aLabel to: aValue]
				]			
			].
