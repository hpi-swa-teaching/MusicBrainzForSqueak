accessing
isNewTrack
	self selectedEntity ifNotNil:
	[self selectedEntity class entityName = 'recording'
		ifTrue:
			[(self selectedEntity class entityName = 'recording' and: self player = nil)
				ifTrue: [^ self selectedEntity isMP3].
			(self selectedEntity filepath ~= self player mpegFile fileName and: self selectedEntity class entityName = 'recording')
				ifTrue: [^ self selectedEntity isMP3].
			(self selectedEntity filepath = self player mpegFile fileName and: self player isPlaying not)
				ifTrue: [^ self selectedEntity isMP3]
		]
	].
	^ false