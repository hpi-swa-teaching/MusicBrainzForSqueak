parsing
xmlParseCountPerfectMatchesIn: aXMLDocument for: aMBEntity

	| hundredScoreCounter |
	hundredScoreCounter := 0.
	aXMLDocument tagsNamed: (aMBEntity class entityName asSymbol) do: [:each |
		((each attributeAt: #ext:score) = '100') ifTrue: [hundredScoreCounter := hundredScoreCounter + 1]].
	^ hundredScoreCounter
	
		