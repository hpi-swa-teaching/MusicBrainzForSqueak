loading
loadFromFile: aString
	| fileStream |
	(self path 
		entryAt: aString 
		ifAbsent: [nil]) notNil
	ifTrue: [fileStream := self path readOnlyFileNamed: aString.
		[^ STON fromString: fileStream contents] on: Exception do: [ ^ nil]].
	^ nil