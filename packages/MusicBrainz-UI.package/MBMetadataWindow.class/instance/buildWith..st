building
buildWith: aBuilder 
	| windowSpec |
	self builder: aBuilder.	
	windowSpec := self buildWindow.
	windowSpec children 
		add: self buildLocalMetadataList;
		add: self buildInputField.
	^ self builder build: windowSpec