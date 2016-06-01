as yet unclassified
testWriteAndRead
	"| testObject answerString |
	testObject := MBMainWindow mockUpData.
	MBSTONHandler saveSTONOf: testObject.
	answerString := MBSTONHandler loadFromLocalSTON.
	self
		assert: answerString first title
		equals: testObject first title
		description: 'Title not equal';
		
		assert: answerString first artists
		equals: testObject first artists
		description: 'Artists not equal'
		"