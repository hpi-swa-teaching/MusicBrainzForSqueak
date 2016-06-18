request
getAlbumsNamed: aString FetchFirst: anInteger
"Returns an OrderedCollection containing MBalbum-objects"

	| request albums |
	
	request := MBRequest getMBIDForReleaseNamed: aString FetchFirst: anInteger.
	albums := OrderedCollection new.
	request do: [:each | albums add: (MBAlbum new setMBID: each)].
	^ albums