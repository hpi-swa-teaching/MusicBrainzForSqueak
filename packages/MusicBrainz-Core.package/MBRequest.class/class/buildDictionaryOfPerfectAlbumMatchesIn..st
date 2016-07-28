request
buildDictionaryOfPerfectAlbumMatchesIn: aXMLDictionary

	| metadataDict hundredDict |
	metadataDict := OrderedDictionary newFrom: {'Title' -> #title. 'Artist' -> #name. 'Tracks' -> #'track-count'. 'Label' -> #label. 'Country' -> #country. 'Medium' -> #format}.
	hundredDict := OrderedDictionary new.
	metadataDict keysDo: [:each | hundredDict at: each put: OrderedCollection new].
	aXMLDictionary tagsNamed: #release do: [:candidate | 
		((candidate attributeAt: #ext:score) = '100')
			ifTrue: [
				metadataDict keysAndValuesDo: [:key :value |
					(key ~= 'Label')
						ifTrue: [(hundredDict at: key) add: ([self xmlParseFirstTagNamed: value in: candidate] on: Error do: [''])]
						ifFalse: [(hundredDict at: key) add: ([self xmlParseCollectTagsNamed: value containing: #name in: candidate] on: Error do: [''])]]]].
	^ hundredDict

