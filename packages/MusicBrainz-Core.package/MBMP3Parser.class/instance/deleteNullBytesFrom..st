parsingFrames
deleteNullBytesFrom: anOrderedCollection
	anOrderedCollection removeAllSuchThat: [ :each | each = 0].
	^ anOrderedCollection asByteArray asString