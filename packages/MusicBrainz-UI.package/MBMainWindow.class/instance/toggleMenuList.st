building
toggleMenuList
	| menuLabels menuValues |
	menuLabels := OrderedCollection new.
	menuLabels add: 'Load library';
		add:  'Save library';
		add: 'Delete library';
		add: 'Import new files';
		add: 'Filter duplicates';
		add: 'Settings...';
		add: 'Currently cached: ', MBRequestCache countURLsinCache;
		add: 'Clear cache'.
	menuValues := OrderedCollection new.
	menuValues add: [self loadLibrary];
		add: [self data saveLibrary];
		add: [self data deleteLibrary];
		add: [self toggleImportWindow];
		add: [MBDuplicateWindow openFrom: self];
		add: [MBSettingsWindow openFrom: self];
		add: [];
		add: [MBRequestCache clearCache].
	(UIManager default chooseFrom: menuLabels values: menuValues lines: #(3 6)) value.