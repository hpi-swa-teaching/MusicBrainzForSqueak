loadFromMB
loadTitleFromMB
	self mbid ifNil: 
		[^ self error: 'No MBID set. Can''t load title.'].
	^ MBRequest getMBMetadataFor: self About: #'Title'