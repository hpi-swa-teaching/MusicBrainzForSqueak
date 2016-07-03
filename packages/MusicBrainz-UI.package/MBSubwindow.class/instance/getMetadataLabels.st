accessing
getMetadataLabels
	| metadata |
	metadata := OrderedCollection new.
	self selectedEntity metadata keysDo: [ :each | metadata add: each].
	metadata addAll: self selectedEntity class availableMetadata.
	^ metadata asSet asOrderedCollection