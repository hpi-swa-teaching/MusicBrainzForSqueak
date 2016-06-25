metadataView
getMetadata
	| metadata |
	self selectedEntity = nil
		ifTrue: [^ #()].
	self getMetadataImage.
	self selectedEntity getMBID.
	metadata := OrderedCollection new.
	self selectedEntity metadata keysAndValuesDo: [:key :value | metadata add: (key, ': ', value)].
	^ metadata