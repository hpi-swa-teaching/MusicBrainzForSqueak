request
buildMBIDListOfPerfectMatchesIn: aXMLDictionary for: aMBEntity

	| hundredList |
	hundredList := OrderedCollection new.
	aXMLDictionary tagsNamed: (aMBEntity class entityName asSymbol) do: [:candidate | 
		((candidate attributeAt: #ext:score) = '100')
			ifTrue: [hundredList add: (candidate attributeAt: 'id')]].
	^ hundredList