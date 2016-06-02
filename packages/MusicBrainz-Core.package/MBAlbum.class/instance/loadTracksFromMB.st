loadFromMB
loadTracksFromMB

	| request tracks |
	self mbid ifNil: 
		[^ self error: 'No MBID set. Can''t load tracks for album.'].

	request := MBRequest getDetailsForA: (self class entityName) withMBID: (self mbid) about: 'recordings'.
	tracks := OrderedCollection new.
	request tagsNamed: #recording do: [:each | 
		tracks add: (MBTrack new setMBID: (each attributeAt: #id))].
	^ tracks