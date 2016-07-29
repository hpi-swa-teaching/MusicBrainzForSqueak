metadata-management
updateMetadataInContainedTracksOf: aMBEntity set: aLabel to: aValue
	aMBEntity tracklist do: [:each | 
		(aLabel = #'Title')
			ifTrue: [	each metadata at: #'Album' put: aValue]
			ifFalse: [self updateMetadataIn: each set: aLabel to: aValue]	]
