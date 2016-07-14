im&ex-porting
writeAudioFile
	self selectedEntity isTrack
		ifTrue: [self data writeAudioFile: self selectedEntity].
	self selectedEntity isAlbum
		ifTrue: [self selectedEntity tracklist
				do: [:each | self data writeAudioFile: each]]