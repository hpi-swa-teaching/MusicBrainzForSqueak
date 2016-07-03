as yet unclassified
loadCoverFromDirectory
	self tracklist do: [:track |
	| pathToTrack |
	pathToTrack := (FileDirectory on: track filepath) containingDirectory.
	(pathToTrack exists)
		ifFalse: [^ nil].
		
	"Look for cover file named like track"
	(pathToTrack fileExists: ((track filepath splitBy: '.') first), '.jpg')
		ifTrue: [^ JPEGReadWriter2 formFromFileNamed: ((track filepath splitBy: '.') first), '.jpg'].
		
	"Look for cover file named folder.jpg"
	(pathToTrack fileExists: 'folder.jpg')
		ifTrue: [^ JPEGReadWriter2 formFromFileNamed: pathToTrack fullName, pathToTrack pathNameDelimiter, 'folder.jpg'].
	
	"Look for cover file named cover.jpg"
	(pathToTrack fileExists: 'cover.jpg')
		ifTrue: [^ JPEGReadWriter2 formFromFileNamed: pathToTrack fullName, pathToTrack pathNameDelimiter, 'cover.jpg']
	].
	^ nil