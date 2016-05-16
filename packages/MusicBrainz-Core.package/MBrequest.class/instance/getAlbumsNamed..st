as yet unclassified
getAlbumsNamed: aString

	| request albums count |
	
	request := self sendQuery: aString forEntity: 'release'.
	albums := OrderedCollection new.
	count := 0.
	request tagsNamed: #release do: [:each | 
		(count <= 10)
		ifTrue: [
			albums add: (MBalbum new setMBID: (each attributeAt: 'id')).
			count := count+1]
		].
	^ albums