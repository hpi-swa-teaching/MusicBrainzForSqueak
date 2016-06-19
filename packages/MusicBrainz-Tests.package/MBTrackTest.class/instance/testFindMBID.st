as yet unclassified
testFindMBID

| track |
track := MBMockData mockTrack.
self assert: (track findMBID) = '205fcb12-2ec2-4cc1-b278-7d679db265f7'
