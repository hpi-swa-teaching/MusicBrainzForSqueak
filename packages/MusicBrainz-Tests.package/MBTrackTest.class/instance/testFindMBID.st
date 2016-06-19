as yet unclassified
testFindMBID

| track |
track := MBTrack new.
track metadata at: #Title put: 'Epsilon'. 
MBRequest getMBIDForTrack: track. 
self assert: (track findMBID) equals: 'df3ce16f-e534-45f7-860b-9de9749338d0' 
