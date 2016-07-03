loadFromMB
loadTracksFromMB
	self mbid ifNil: 
		[^ self error: 'No MBID set. Can''t load tracks for album.'].
	^ MBRequest getMBMetadataFor: self About: #'Tracks'