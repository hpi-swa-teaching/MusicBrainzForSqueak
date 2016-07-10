building
buildWith: aBuilder 
	| windowSpec build |
	self builder: aBuilder.
	windowSpec := self buildWindow.
	windowSpec children 
		add: self buildMenuButton;
		add: self buildAlbumTreeView;
		add: self buildMetadataView;
		add: self buildEditMetadataButton;
		add: self buildWriteTrackButton;
		add: self buildCoverView;
		add: self buildLoadMetadataButton;
		add: self buildPlayButton;
		add: self buildOpenMBIDButton;
		add: self buildMergeButton;
		add: self buildPlayNewTrackButton;
		addAll: self buildHeaderViews.
	
	build := self builder build: windowSpec.
	self coverView: (self builder widgetAt: #coverView).
	^ build