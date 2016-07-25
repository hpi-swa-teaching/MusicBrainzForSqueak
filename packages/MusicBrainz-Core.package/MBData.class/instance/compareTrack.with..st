accessing
compareTrack: anMBTrack with: anotherMBTrack 

^ (((anMBTrack metadata at: #Artist) = (anotherMBTrack metadata at: #Artist)) and: ((anMBTrack metadata at: #Title) = (anotherMBTrack  metadata at: #Title)))