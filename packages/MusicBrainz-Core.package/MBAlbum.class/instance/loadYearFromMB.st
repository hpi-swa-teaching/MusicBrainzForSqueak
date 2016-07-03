loadFromMB
loadYearFromMB
	self mbid ifNil: 
		[^ self error: 'No MBID set. Can''t load year for album.'].
	^ MBRequest getMBMetadataFor: self About: #'Year'