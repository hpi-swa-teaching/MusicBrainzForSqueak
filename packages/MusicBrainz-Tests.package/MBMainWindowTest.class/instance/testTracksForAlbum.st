TESTING: methods
testTracksForAlbum
	self 
		assert: (self mainWindow tracksForAlbum: #Peace) = #('Ghettoblaster' 'Ich steh am Mikro...' '...Dabei kann ich gar nicht singen...' 'Autotune an...' );
		assert: (self mainWindow tracksForAlbum: #newAlbum) = #('Track#1' 'Track#2' 'Track#3');
		assert: (self mainWindow tracksForAlbum: #notInCollection) = #()