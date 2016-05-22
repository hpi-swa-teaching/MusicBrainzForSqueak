building
buildWith: aBuilder 
	| windowSpec |
	self builder: aBuilder.
	windowSpec := self buildWindow.
	windowSpec children 
		"Deprecated"
		add: self buildDeprecatedAlbumTreeView;
		add: self buildDeprecatedTrackView;
		add: self buildDeprecatedAlbumView;
		"Good"
		add: self buildAlbumTreeView;
		add: self buildMetadataView.
	^ self builder build: windowSpec