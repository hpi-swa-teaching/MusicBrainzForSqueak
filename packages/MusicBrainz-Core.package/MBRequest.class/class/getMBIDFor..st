request
getMBIDFor: aMBEntity

	| responseXML |
	responseXML := MBRequest sendRequestTo: (MBRequest createMBIDRequestURLFor: aMBEntity).
	responseXML ifNil: [^ ''].
	(self xmlParseCountPerfectMatchesIn: responseXML for: aMBEntity) < 2
		ifTrue: [^ (responseXML firstTagNamed: (aMBEntity class entityName asSymbol)) attributeAt: 'id'].
	^ self letUserChooseRightMBID: responseXML for: aMBEntity
	