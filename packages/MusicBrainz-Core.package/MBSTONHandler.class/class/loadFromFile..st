saving and loading
loadFromFile: aString
	| fileStream |
	(MBSTONHandler path entryAt: aString ifAbsent: [nil]) notNil
	ifTrue: [
		fileStream := MBSTONHandler path readOnlyFileNamed: aString.
		[^ STON fromString: fileStream contents] on: Exception do: [ ^ nil]].
	^ nil