as yet unclassified
testCopyFileToFile

	|originStream targetStream|
	originStream := FileStream fileNamed: (Smalltalk imagePath, '/albums/test.mp3').
	targetStream := FileStream fileNamed: (Smalltalk imagePath, '/albums/test2.mp3').
	originStream binary.
	targetStream binary.
	
	self emptyParser copyFile: originStream toFile: targetStream. 
	
	self assert: originStream contents equals: targetStream contents.
	
	originStream close.
	targetStream close.