loadFromMB
loadLabelsFromMB
	
	self mbid ifNil: 
		[^ self error: 'No MBID set. Can''t load labels for album.'].

	^ MBRequest getMBMetadataFor: self About: #'Label'