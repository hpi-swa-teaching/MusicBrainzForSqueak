accessing
getTracks

	^ self tracklist ifNil:
		[^ OrderedCollection new]