TESTING: metadata-management
testUpdateMetadataInsetto
	| track album |
	
	track := MBTrack new.
	
	self data updateMetadataIn: track set: #'Year' to: '2011'.
	self
		assert: (track metadata at: #'Year')
		equals: '2011'
		description: 'UpdateMetadata should have set year of track.'.
	
	album := self data albums detect: [:each | ^ ((each metadata at: #'Title') = MBMockData mockAlbum2)].
	self data updateMetadataIn: album set: #'Label' to: 'TestLabel'.
	album tracklist do: [:each |
		self
			assert: (each metadata at: #'Label')
			equals: 'TestLabel'
			description: 'UpdateMetadata should have set Label of all contained tracks.'].
	
	self data updateMetadataIn: album set: #'Titel' to: (MBMockData mockAlbum2, ' Deluxe Edition').
	album tracklist do: [:each |
		self
			assert: (each metadata at: #'Album')
			equals: (MBMockData mockAlbum2, ' Deluxe Edition')
			description: 'UpdateMetadata should changed album titles for all contained tracks.'].
	