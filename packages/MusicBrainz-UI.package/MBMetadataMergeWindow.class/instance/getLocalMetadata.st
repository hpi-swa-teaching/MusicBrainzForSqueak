building
getLocalMetadata

	| metadata selectedEntity |
	selectedEntity := self mainWindow selectedEntity.
	selectedEntity = nil
		ifTrue: [^ #()].
	metadata := OrderedCollection new.
	self getMetadataLabels do: [:each |
		metadata add: (selectedEntity metadata at: each ifAbsent: '')].
	^ metadata