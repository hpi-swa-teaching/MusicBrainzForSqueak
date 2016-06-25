as yet unclassified
getMetadata
	| metadata |
	metadata := OrderedCollection new.
	self mainWindow getMetadata do: [ :each | metadata add: ((self splitMetadata: each) at: #label)].
	metadata addAll: self mainWindow selectedEntity class availableMetadata.
	^ metadata asSet asOrderedCollection