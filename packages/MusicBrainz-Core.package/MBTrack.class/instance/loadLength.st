loadFromMB
loadLength
	self mbid ifNil: 
		[^ self error: 'No MBID set. Can''t load length for track.'].
	^ MBRequest getMBMetadataFor: self About: #'Length'