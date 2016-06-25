accessing
isTrackSelected
	self selectedEntity
		ifNotNil: [
			(self selectedEntity isTrack) 
				ifTrue: [^self selectedEntity isMP3]].
		^false