loadFromMB
loadCoverFromDirectory
	self tracklist do: [:track | "Looping through all tracks, as the files might be spread over multiple folders"
		| pathToTrack possibleFileNames |
		pathToTrack := (FileDirectory on: track filepath) containingDirectory.
		(pathToTrack exists) ifFalse: [^ nil].
		possibleFileNames := OrderedCollection newFrom: {"((track filepath splitBy: '.') first), '.jpg'." 'folder.jpg'. 'cover.jpg'}.
		possibleFileNames do: [:each | (pathToTrack fileExists: each)
				ifTrue: [^ JPEGReadWriter2 formFromFileNamed: pathToTrack fullName, pathToTrack pathNameDelimiter, each]]].
	^ nil