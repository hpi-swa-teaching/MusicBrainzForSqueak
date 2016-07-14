accessing
buildWith: aBuilder 
	| windowSpec |
	self builder: aBuilder.	
	windowSpec := self buildWindow.
	windowSpec children 
		add: self buildLabelMetadataList;
		add: self buildMetadataList;
		add: self buildMBMetadataList;
		add: self buildAcceptButton;
		add: self buildCancelButton;
		addAll: self buildHeaderViews.
	^ self builder build: windowSpec