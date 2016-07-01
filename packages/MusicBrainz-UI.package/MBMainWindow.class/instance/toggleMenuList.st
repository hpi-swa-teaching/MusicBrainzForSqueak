building
toggleMenuList
	| menuLabels menuValues |
	menuLabels := OrderedCollection new.
	menuLabels add: 'Load STON file from disk';
		add:  'Save STON file to disk';
		add: 'Import files from disk';
		add: 'Currently cached: ', MBRequestCache countURLsinCache;
		add: 'Clear cache'.
	menuValues := OrderedCollection new.
	menuValues add: [self loadFromDisk];
		add: [self data saveToDisk];
		add: [self toggleImportWindow];
		add: [];
		add: [MBRequestCache clearCache].
	(UIManager default chooseFrom: menuLabels values: menuValues lines: #(3)) value.