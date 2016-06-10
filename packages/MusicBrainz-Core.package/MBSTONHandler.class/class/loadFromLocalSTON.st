saving and loading
loadFromLocalSTON
	| fileStream |
	(MBSTONHandler path entryAt: 'albums.ston' ifAbsent: [nil]) notNil
	ifTrue: [
		fileStream := MBSTONHandler path readOnlyFileNamed: 'albums.ston'.
		[^ STON fromString: fileStream contents] on: Exception do: [ ^ nil]]
	ifFalse: [ 
		MBSTONHandler inform: 'No saved file found.'.
		^ nil]