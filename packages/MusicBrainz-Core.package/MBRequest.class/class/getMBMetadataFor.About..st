request
getMBMetadataFor: aMBEntity about: aString
	| MBTag xmlDocument requestURL |
	MBTag := MBRequest mbQueryStrings at: aString ifAbsent: ''.
	(MBTag = 'NA') ifTrue: [^ nil].
	requestURL := MBRequest baseURL, aMBEntity class entityName, '/', aMBEntity getMBID, '?inc=', MBTag.
	xmlDocument := MBRequest sendRequestTo: requestURL.
	(xmlDocument isNil or: ((MBRequest mbXMLparseDictionary includesKey: aString) not))
		ifTrue: [^ nil].
	^ [(MBRequest mbXMLparseDictionary at: aString) value: xmlDocument] on: Error do: [nil]