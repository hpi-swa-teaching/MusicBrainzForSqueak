request
getMBMetadataFor: aMBEntity about: aString

	| MBTag xmlDocument requestURL |
	MBTag := MBRequest MBQueryStrings at: aString ifAbsent: ''.
	(MBTag = 'NA')
		ifTrue: [^ nil].
	requestURL := MBRequest baseURL, aMBEntity class entityName, '/', aMBEntity getMBID, '?inc=', MBTag.
	xmlDocument := MBRequest sendRequestTo: requestURL.
	(xmlDocument isNil or: ((MBRequest MBXMLparseDictionary includesKey: aString) not))
		ifTrue: [^ nil].
	^ [(MBRequest MBXMLparseDictionary at: aString) value: xmlDocument] on: Error do: [nil]