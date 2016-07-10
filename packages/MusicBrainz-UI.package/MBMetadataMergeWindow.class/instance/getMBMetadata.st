building
getMBMetadata

	| metadata labels |
	(self mBMetadata isNil not)
		ifTrue: [^ self mBMetadata].
	metadata := OrderedCollection new.
	labels := self getMetadataLabels.
	labels do: [:each |
		metadata add: ((MBRequest getMBMetadataFor: self selectedEntity About: each) ifNil: '')].
	self mBMetadata: metadata.
	^ self mBMetadata