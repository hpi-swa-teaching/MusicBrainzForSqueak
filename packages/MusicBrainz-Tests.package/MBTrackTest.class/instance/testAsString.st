as yet unclassified
testAsString

|track |
track := MBTrack new.
track metadata at: #Title put: 'Epsilon'.
self assert: track asString equals: track getTitle