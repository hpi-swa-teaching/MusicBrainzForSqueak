request
buildMBIDListOfPerfectMatchesIn: aXMLDictionary for: aMBEntity

	| hundredList |
	hundredList := OrderedCollection new.
	self forPerfectMatchesIn: aXMLDictionary for: aMBEntity do: [:candidate | hundredList add: (candidate attributeAt: 'id')].
	^ hundredList