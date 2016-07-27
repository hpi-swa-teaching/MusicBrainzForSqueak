deleting
deleteSelectedTracks
	self selectedEntitiesToDelete doWithIndex: [:selected :index | 
			selected
				ifTrue: [self mainWindow data
						removeTrack: (self duplicates at: index)]].
	self updateViews