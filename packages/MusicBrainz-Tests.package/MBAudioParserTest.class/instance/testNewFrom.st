as yet unclassified
testNewFrom
	| aFileObject parser |
	aFileObject := nil.
	(FileDirectory on: (Smalltalk imagePath, '/albums/')) entries
	do: [ :entry | (entry isDirectory not and: entry extension = 'mp3')
			ifTrue: [aFileObject := entry]].
	parser := MBAudioParser newFrom: aFileObject.
	self 
		assert: parser class = MBMP3Parser;
		assert: parser stream class = MultiByteFileStream;
		assert: parser track class = MBTrack.
	parser stream close
