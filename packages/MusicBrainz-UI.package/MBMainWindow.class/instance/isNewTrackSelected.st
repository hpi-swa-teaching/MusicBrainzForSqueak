accessing
isNewTrackSelected
	self selectedEntity ifNotNil:
	[self selectedEntity isTrack
		ifTrue:
			"Not played any song before"
			[self player
				ifNil: [^ self selectedEntity isMP3].
			"Selected a new track"
			(self selectedEntity filepath ~= self player mpegFile fileName and: self selectedEntity isTrack) 
				ifTrue: [^ self selectedEntity isMP3].
			"Is same track, but paused and I want to restart"
			(self selectedEntity filepath = self player mpegFile fileName and: self player isPlaying not) 
				ifTrue: [^ self selectedEntity isMP3]
		]
	].
	^ false