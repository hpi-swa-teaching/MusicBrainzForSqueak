building
getLocalMetadata

	| metadata |
	(self localMetadata isNil not)
		ifTrue: [^ self localMetadata].
	metadata := OrderedCollection new.
	self getMetadataLabels do: [:each |
		metadata add: (self selectedEntity metadata at: each ifAbsent: '')].
	self localMetadata: metadata.
	^ self localMetadata