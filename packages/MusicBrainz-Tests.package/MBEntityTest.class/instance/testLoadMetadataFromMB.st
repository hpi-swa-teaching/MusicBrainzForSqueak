as yet unclassified
testLoadMetadataFromMB

| mbEntity |

mbEntity := MBTrack new.
mbEntity mbid: 'df3ce16f-e534-45f7-860b-9de9749338d0'.
mbEntity loadMetadataFromMB.
self assert: (mbEntity metadata at: #Title) equals: 'Epsilon'