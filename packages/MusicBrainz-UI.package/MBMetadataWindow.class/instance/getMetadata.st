as yet unclassified
getMetadata
	| metadata |
	metadata := OrderedCollection new.
	self mainWindow selectedEntity metadata keysDo: [ :each | metadata add: each].
	metadata addAll: self mainWindow selectedEntity class availableMetadata.
	^ metadata asSet asOrderedCollection