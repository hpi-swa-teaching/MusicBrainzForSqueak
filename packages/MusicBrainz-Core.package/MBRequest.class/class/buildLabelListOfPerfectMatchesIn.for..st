request
buildLabelListOfPerfectMatchesIn: aXMLDictionary for: aMBEntity
	| candidatesDict labelList |
	candidatesDict := self buildDictionaryOfPerfectMatchesIn: aXMLDictionary for: aMBEntity.
	labelList := OrderedCollection new.
	1 to: (candidatesDict first value size) do: [:each | | labelString |
		labelString := ''.
		candidatesDict keysAndValuesDo: [:key :value |
			(value asSet size > 1)
				ifTrue: [	labelString := labelString, key asString, ': ', (value at: each) asString, ' - ']].
		labelList add: (labelString ifEmpty: [^ nil] ifNotEmptyDo: [:string | string allButLast: 3])].
	^ labelList