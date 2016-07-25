accessing
getLength
	| totalLength |
	totalLength := 0.
	self tracklist do: [:each | 
		each getLength ifNotNilDo: [:length |
			totalLength := totalLength + length]].
	^ totalLength