as yet unclassified
testAlbumEntity
	| album |
	album := MBAlbum new.
	self track albumentity: album.
	self assert: self track albumentity equals: album. 