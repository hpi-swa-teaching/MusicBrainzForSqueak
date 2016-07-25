as yet unclassified
deleteSelectedTracks

self selectedEntitiesToDelete doWithIndex: [:selected :index | 
			selected
				ifTrue: [self mainWindow data
						removeTrack: (self duplicates at: index)]].
self duplicates: nil.
self changed: #duplicates.
self selectedEntitiesToDelete: (Array new: (self duplicates size) withAll: false).
self mainWindow changed: #albums.
""": [:each | self mainWindow data removeTrack: each]."""