request
letUserChooseRightMBID: aXMLDocument for: aMBEntity
	| listWithLabels listWithValues |
	listWithLabels := (self buildLabelListOfPerfectMatchesIn: aXMLDocument for: aMBEntity).
	listWithValues :=(self buildMBIDListOfPerfectMatchesIn: aXMLDocument for: aMBEntity).
	^ (UIManager default chooseFrom: (listWithLabels ifNil: listWithValues)
		values: listWithValues
		title: 'Please choose the correct ', aMBEntity class entityName)
	