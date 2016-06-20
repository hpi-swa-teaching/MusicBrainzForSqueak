accessing
isTrackSelected
	self selectedEntity
		ifNotNil: [(self selectedEntity class entityName = 'recording') 
			ifTrue: [^self selectedEntity isMP3]].
		^false