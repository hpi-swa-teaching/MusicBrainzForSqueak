writing
createUpdatedFramesFrom: aDictionary 
	| newFrames |
	newFrames := self copyUnchangedFrames: aDictionary.
	aDictionary
		keysAndValuesDo: [:aTag :aContent | newFrames
				addAll: (self
						createTextFrame: (MBMP3Parser textFrames keyAtValue: aTag)
						With: aContent)].
	^ newFrames