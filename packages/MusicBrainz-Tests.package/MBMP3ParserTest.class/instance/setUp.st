as yet unclassified
setUp

	"aFileObject := nil.
	(FileDirectory on: (Smalltalk imagePath, '/albums/')) entries
	do: [ :entry | (entry isDirectory not and: entry extension = 'mp3')
			ifTrue: [aFileObject := entry]].
	self parserFromFile: (MBAudioParser newFrom: aFileObject)."
	self mp3File: Smalltalk imagePath, FileDirectory slash,'albums',FileDirectory slash,'test.mp3'.
	self emptyParser: MBMP3Parser new.
	self emptyParser stream: (MultiByteBinaryOrTextStream with: (OrderedCollection new) encoding: nil)