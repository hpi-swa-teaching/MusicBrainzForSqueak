accessing
findDuplicates

| tracks duplicates currentTrack duplicatesForTrack |
tracks := self tracks.
duplicates := OrderedCollection new.
[tracks size > 0]
	whileTrue: [
		currentTrack := tracks first.
		duplicatesForTrack := tracks select: [:each | self compareTrack: each with: currentTrack].
		(duplicatesForTrack size > 1)
			ifTrue: [duplicates addAll: duplicatesForTrack].
		tracks removeAll: duplicatesForTrack].
^ duplicates 