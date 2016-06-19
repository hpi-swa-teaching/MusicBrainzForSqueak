as yet unclassified
testIsMP3

| track flacTrack| 

track := MBTrack new.
track filepath: 'C/Music/test.mp3'.
self assert: (track isMP3) equals: true.

flacTrack := MBTrack new.
flacTrack filepath: 'C/Music/test.flac'.
self assert: (flacTrack isMP3) equals: false
