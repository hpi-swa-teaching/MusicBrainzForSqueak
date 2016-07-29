accessing
getLocalMetadata

	| metadata |
	(self localMetadata isNil not)
		ifTrue: [^ self localMetadata].
	metadata := OrderedCollection new.
	self getMetadataLabels do: [:each |
		metadata add: (self mainWindow selectedEntity metadata at: each ifAbsent: '')].
	self localMetadata: metadata.
	^ self localMetadata