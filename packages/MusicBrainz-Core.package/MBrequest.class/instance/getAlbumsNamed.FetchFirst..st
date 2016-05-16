as yet unclassified
getAlbumsNamed: aString FetchFirst: anInteger
"Returns an OrderedCollection containing MBalbum-objects"

	| request albums |
	
	request := self getMBIDForReleaseNamed: aString FetchFirst: anInteger.
	albums := OrderedCollection new.
	request do: [:each | albums add: (MBalbum new setMBID: each)].
	^ albums