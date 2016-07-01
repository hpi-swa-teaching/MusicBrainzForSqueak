loadFromMB
loadMediaFromMB

	self mbid ifNil: 
		[^ self error: 'No MBID set. Can''t load media for album.'].
	^ MBRequest getMBMetadataFor: self About: #'Media'