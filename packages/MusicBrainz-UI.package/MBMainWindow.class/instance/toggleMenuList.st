building
toggleMenuList
	| menuLabels menuValues |
	menuLabels := OrderedCollection new.
	menuLabels add: 'Load library';
		add:  'Save library';
		add: 'Import new files';
		add: 'Currently cached: ', MBRequestCache countURLsinCache;
		add: 'Clear cache'.
	menuValues := OrderedCollection new.
	menuValues add: [self loadFromDisk];
		add: [self data saveToDisk];
		add: [self toggleImportWindow];
		add: [];
		add: [MBRequestCache clearCache].
	(UIManager default chooseFrom: menuLabels values: menuValues lines: #(3)) value.