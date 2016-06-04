as yet unclassified
getTracks

	^ self tracklist ifNil:
		[^ OrderedCollection new]