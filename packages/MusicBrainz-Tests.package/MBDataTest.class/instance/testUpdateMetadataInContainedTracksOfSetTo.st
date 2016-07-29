TESTING: metadata-management
testUpdateMetadataInContainedTracksOfSetTo

	| testAlbum |
	testAlbum := MBAlbum new.
	testAlbum tracklist add: MBTrack new.
	self data updateMetadataInContainedTracksOf: testAlbum set: #'Year' to: '2013'.
	self data updateMetadataInContainedTracksOf: testAlbum set: #'Title' to: 'AlbumTitle'.
	self
		assert: (testAlbum tracklist first metadata at: #'Year')
		equals: '2013'
		description: 'Year should have been set in tracks of album'.
	self
		assert: (testAlbum tracklist first metadata at: #'Album')
		equals: 'AlbumTitle'
		description: 'Albumname should have been set in tracks of album'