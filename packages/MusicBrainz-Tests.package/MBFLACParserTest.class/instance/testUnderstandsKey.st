as yet unclassified
testUnderstandsKey
	self assert: (self emptyParser underStandsKey: #Album).
	self deny: (self emptyParser underStandsKey: #NotAValidKey)