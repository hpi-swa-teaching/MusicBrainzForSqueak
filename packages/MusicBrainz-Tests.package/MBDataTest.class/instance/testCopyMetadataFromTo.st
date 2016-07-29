TESTING: metadata-management
testCopyMetadataFromTo

	| testTrack testAlbum |
	testTrack := MBTrack new.
	testTrack metadata at: #'Album' put: 'AnAlbum'.
	testTrack metadata at: #'Artist' put: 'Artist1'.
	testTrack metadata at: #'Year' put: '2014'.
	testAlbum := MBAlbum new.
	self data copyMetadataFrom: testTrack to: testAlbum.
	self
		assert: testAlbum getTitle
		equals: (testTrack metadata at: #'Album')
		description: 'Albumtitle should have been set from track'.		
	self
		assert: testAlbum getArtists
		equals: testTrack getArtists
		description: 'Albumartist should have been set from track'.
	self
		assert: (testAlbum metadata at: #'Year')
		equals: (testTrack metadata at: #'Year')
		description: 'Albumyear should have been set from track'
	
