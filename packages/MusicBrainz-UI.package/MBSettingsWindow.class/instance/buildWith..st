as yet unclassified
buildWith: aBuilder 
	| windowSpec |
	self builder: aBuilder.	
	windowSpec := self buildWindow.
	windowSpec children 
		addAll: self buildLabelFields;
		addAll: self buildInputFields.
	^ self builder build: windowSpec