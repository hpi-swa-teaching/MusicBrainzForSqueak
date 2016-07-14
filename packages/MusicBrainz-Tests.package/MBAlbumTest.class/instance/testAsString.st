as yet unclassified
testAsString

| album |
album := MBAlbum new.
album metadata at: #Title put: 'Graduation'.
album metadata at: #Artist put: 'Kanye West'.
self assert: album asString equals: '(!) Graduation - Kanye West'