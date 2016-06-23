as yet unclassified
testResume
<timeout: 3>
	| position |
	self player play. 
	(Delay forSeconds: 1) wait.
	self player pause.
	position := self player soundPosition.
	self player resume.
	(Delay forSeconds: 1) wait.
	self 
		assert: self player soundPosition >= position.
	self player closeFile.