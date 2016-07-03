loadFromMB
loadArtistsFromMB
	self mbid ifNil: 
		[^ self error: 'No MBID set. Can''t load artists.'].
	^ MBRequest getMBMetadataFor: self About: #'Artist'