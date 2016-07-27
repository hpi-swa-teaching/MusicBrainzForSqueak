building
buildWith: aBuilder 
	| windowSpec |
	self builder: aBuilder.	
	windowSpec := self buildWindow.
	windowSpec children 
		addAll: self buildLabelFields;
		addAll: self buildInputFields;
		add: self buildResetButton;
		add: self buildResetToDefaultButton;
		add: self buildAcceptButton.
	^ self builder build: windowSpec