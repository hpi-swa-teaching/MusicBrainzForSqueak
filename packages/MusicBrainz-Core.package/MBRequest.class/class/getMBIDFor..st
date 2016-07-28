request
getMBIDFor: aMBEntity

	| responseXML listWithLabels listWithValues |
	responseXML := MBRequest sendRequestTo: (MBRequest createMBIDRequestURLFor: aMBEntity).
	responseXML ifNil: [^ ''].
	(self xmlParseCountPerfectMatchesIn: responseXML for: aMBEntity) < 2
		ifTrue: [^ (responseXML firstTagNamed: (aMBEntity class entityName asSymbol)) attributeAt: 'id'].
	listWithLabels := (self buildLabelListOfPerfectMatchesIn: responseXML for: aMBEntity).
	listWithValues :=(self buildMBIDListOfPerfectMatchesIn: responseXML for: aMBEntity).
	^ (UIManager default
		chooseFrom: (listWithLabels ifNil: listWithValues)
		values: listWithValues
		title: 'Please choose the correct ', aMBEntity class entityName)
	