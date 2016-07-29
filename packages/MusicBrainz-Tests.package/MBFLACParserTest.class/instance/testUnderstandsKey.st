testing
testUnderstandsKey
	self assert: (self emptyParser understandsKey: #Album).
	self deny: (self emptyParser understandsKey: #NotAValidKey)