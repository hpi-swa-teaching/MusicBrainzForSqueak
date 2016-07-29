request
buildDictionaryOfPerfectMatchesIn: aXMLDictionary for: aMBEntity
	| metadataDict hundredDict |
	metadataDict := self contentDictionaryForPerfect: aMBEntity.
	hundredDict := OrderedDictionary new.
	metadataDict keysDo: [:each | hundredDict at: each put: OrderedCollection new].
	self forPerfectMatchesIn: aXMLDictionary for: aMBEntity do: [:candidate |
		metadataDict keysAndValuesDo: [:key :value |
			(hundredDict at: key) add: ([(metadataDict at: key) value: candidate] on: Error do: [''])]].
	^ hundredDict

