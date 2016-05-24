TESTING: methods
testAllTracks
	self assert: self mainWindow allTracks = #('Ghettoblaster' 'Ich steh am Mikro...' '...Dabei kann ich gar nicht singen...' 'Autotune an...' 'Track#1' 'Track#2' 'Track#3') asOrderedCollection