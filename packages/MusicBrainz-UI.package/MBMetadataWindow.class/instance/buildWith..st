as yet unclassified
buildWith: aBuilder 
	| windowSpec |
	self builder: aBuilder.	
	windowSpec := self buildWindow.
	windowSpec children 
		add: self buildAvailableMetadataList;
		add: self buildInputField.
	^ self builder build: windowSpec