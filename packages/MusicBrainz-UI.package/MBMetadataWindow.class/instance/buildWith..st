building
buildWith: aBuilder 
	| windowSpec |
	self builder: aBuilder.	
	windowSpec := self buildWindow.
	windowSpec children 
		add: self buildLocalMetadataList;
		add: self buildInputField;
		add: self buildDeleteButton.
	^ self builder build: windowSpec