building
buildWith: aBuilder 
	| windowSpec |
	self builder: aBuilder.
	windowSpec := self buildWindow.
	windowSpec children 
		add: self buildFileTreeView;
		add: self buildFileListView.
	^ self builder build: windowSpec