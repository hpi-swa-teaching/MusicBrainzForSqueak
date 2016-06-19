as yet unclassified
testFindMBID 

| album |
album := MBTrack new.
album metadata at: #Album put: 'Graduation'. 
MBRequest getMBIDForTrack: album. 
self assert: (album findMBID) equals:  '0c155741-2c3c-44aa-90ab-2b343f9f499c' 
