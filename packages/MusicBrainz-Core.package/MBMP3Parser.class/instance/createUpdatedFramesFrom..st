writing
createUpdatedFramesFrom: aDictionary 
	| newFrames |
	newFrames := self copyUnchangedFramesNotIn: aDictionary.
	aDictionary
		keysAndValuesDo: [:aTag :aContent | newFrames
				addAll: (self
						createTextFrame: (self class textFrames keyAtValue: aTag)
						With: aContent)].
	^ newFrames