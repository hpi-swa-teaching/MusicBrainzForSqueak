request
forPerfectMatchesIn: aXMLDictionary for: aMBEntity do: aBlock
	aXMLDictionary
		tagsNamed: (aMBEntity class entityName asSymbol)
		do: [:candidate | 
			((candidate attributeAt: #ext:score) = '100')
				ifTrue: [aBlock value: candidate]]