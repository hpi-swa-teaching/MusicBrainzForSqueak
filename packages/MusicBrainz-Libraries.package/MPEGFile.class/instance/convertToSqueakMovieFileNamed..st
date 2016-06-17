converting
convertToSqueakMovieFileNamed: fileName 
	"convert the receiver to a squeak-format movie"
	" 
	(MPEGFile openFile:
	'/H/squeak/Small-Land/Demo/media/mazinger:=z:=spanish:=op.mpg') 
	convertToSqueakMovieFileNamed: 'MazingerZ.squeakmovie' 
	"
	| movieFile max w h d frameBuffer |
	movieFile := FileStream newFileNamed: fileName.
	[movieFile binary.
	"no idea what goes here..."
	movieFile nextInt32Put: 0.
	movieFile nextInt32Put: (w := self videoFrameWidth: 0).
	movieFile nextInt32Put: (h := self videoFrameHeight: 0).
	"Depth of form data stored"
	"we really don't know but try to preserve some space"
	movieFile nextInt32Put: (d := 16).
	movieFile nextInt32Put: (max := self videoFrames: 0).
	"min: 100"
	movieFile nextInt32Put: (1000 * 1000
			/ (self videoFrameRate: 0)) rounded.
	"Padding?"
	movieFile
		nextPutAll: (ByteArray new: 128 - movieFile position).
	frameBuffer := Form extent: w @ h depth: d.
	self videoSetFrame: 1 stream: 0.
	'Converting movie...'
		displayProgressAt: Sensor cursorPoint
		from: 1
		to: max
		during: [:bar | 1
				to: max
				do: [:i | 
					bar value: i.
					self videoReadFrameInto: frameBuffer stream: 0.
					frameBuffer display.
					movieFile nextInt32Put: i.
					movieFile nextPutAll: frameBuffer bits]]]
		ensure: [movieFile close]