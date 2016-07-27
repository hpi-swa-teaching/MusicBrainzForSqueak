as yet unclassified
testUnderstandsKey
	self assert: (self emptyParser understandsKey: #Album).
	self deny: (self emptyParser understandsKey: #NotAValidKey)