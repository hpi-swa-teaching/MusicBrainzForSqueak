accessing
isTrackSelected
	self selectedEntity
		ifNotNil: [(self selectedEntity class entityName = MBTrack entityName) 
			ifTrue: [^self selectedEntity isMP3]].
		^false