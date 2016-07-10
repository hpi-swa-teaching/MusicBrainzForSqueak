building
labelFor: aDirectory 
	^ (self rootDirectory includes: aDirectory)
		ifTrue: [aDirectory fullName]
		ifFalse: [aDirectory localName]