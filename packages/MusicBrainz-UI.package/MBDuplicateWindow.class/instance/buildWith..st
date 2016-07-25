as yet unclassified
buildWith: aBuilder 
	| windowSpec |
	self builder: aBuilder.
	windowSpec := self buildWindow.
	windowSpec children 
		add: self buildListView;
		add: self buildDeleteButton.
	^ self builder build: windowSpec