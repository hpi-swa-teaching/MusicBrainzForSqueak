metadataView
getMetadata
	| metadata standardMetadataKeys |
	self selectedEntity = nil
		ifTrue: [^ #()].
	self getMetadataImage.
	self selectedEntity getMBID.
	self selectedEntity isTrack
	ifTrue: [standardMetadataKeys:= self standardMetadataKeysForTrack]
	ifFalse: [standardMetadataKeys:= self standardMetadataKeysForAlbum].
	standardMetadataKeys collect: [:each | (self selectedEntity metadata keys hasLiteral: each)
												ifFalse: [self selectedEntity metadata at: each put: '']].
	metadata := OrderedCollection new.
	self selectedEntity metadata keysAndValuesDo: [:key :value | value ~= '' 
																	ifTrue: [metadata add: (key, ': ', value)]
																	ifFalse: [metadata add: (key, '(!): ', value)]].
	^ metadata