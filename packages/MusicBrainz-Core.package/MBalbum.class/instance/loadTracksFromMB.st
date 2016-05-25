as yet unclassified
loadTracksFromMB

	| request tracks |
	request := MBrequest new getDetailsForA: (self class entityName) withMBID: (self mbid) about: 'recordings'.
	tracks := OrderedCollection new.
	request tagsNamed: #recording do: [:each | 
	tracks add: (MBtrack new setMBID: (each attributeAt: #id))].
	^ tracks