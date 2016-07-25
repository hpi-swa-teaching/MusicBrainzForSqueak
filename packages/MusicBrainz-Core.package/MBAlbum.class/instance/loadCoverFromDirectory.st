loadFromMB
loadCoverFromDirectory
	self tracklist do: [:track |
	| pathToTrack |
	pathToTrack := (FileDirectory on: track filepath) containingDirectory.
	(pathToTrack exists)
		ifFalse: [^ nil].
		
	(pathToTrack fileExists: ((track filepath splitBy: '.') first), '.jpg')
		ifTrue: [^ JPEGReadWriter2 formFromFileNamed: ((track filepath splitBy: '.') first), '.jpg'].
		
	(pathToTrack fileExists: 'folder.jpg')
		ifTrue: [^ JPEGReadWriter2 formFromFileNamed: pathToTrack fullName, pathToTrack pathNameDelimiter, 'folder.jpg'].
	
	(pathToTrack fileExists: 'cover.jpg')
		ifTrue: [^ JPEGReadWriter2 formFromFileNamed: pathToTrack fullName, pathToTrack pathNameDelimiter, 'cover.jpg']
	].
	^ nil