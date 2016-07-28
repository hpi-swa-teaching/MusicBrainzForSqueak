loadFromMB
loadFromMB: aString
	self mbid ifNil: 
		[^ self error: 'No MBID set. Can''t load', aString].
	^ MBRequest getMBMetadataFor: self about: aString