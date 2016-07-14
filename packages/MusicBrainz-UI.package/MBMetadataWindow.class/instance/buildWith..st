building
buildWith: aBuilder 
	| windowSpec |
	self builder: aBuilder.	
	windowSpec := self buildWindow.
	windowSpec children 
		add: self buildMetadataList;
		add: self buildInputField;
		add: self buildDeleteButton.
	^ self builder build: windowSpec