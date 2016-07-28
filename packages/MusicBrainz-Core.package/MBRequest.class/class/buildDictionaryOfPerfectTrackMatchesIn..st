request
buildDictionaryOfPerfectTrackMatchesIn: aXMLDictionary

	| hundredDict metadataDict |

	metadataDict := OrderedDictionary newFrom: {'Title' -> #title. 'Artist' -> #name. 'Album' -> #release}.
	hundredDict := OrderedDictionary new.
	metadataDict keysDo: [:each | hundredDict at: each put: OrderedCollection new].
	aXMLDictionary tagsNamed: #recording do: [:candidate | 
		((candidate attributeAt: #ext:score) = '100')
			ifTrue: [
				metadataDict keysAndValuesDo: [:key :value |
					(key ~= 'Album')
						ifTrue: [(hundredDict at: key) add: ([self xmlParseFirstTagNamed: value in: candidate] on: Error do: [''])]
						ifFalse: [(hundredDict at: key) add: ([self xmlParseFirstTagNamed: value containingFirst: #title in: candidate] on: Error do: [''])]]]].
	^ hundredDict