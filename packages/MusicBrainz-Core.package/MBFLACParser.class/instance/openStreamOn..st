initializing
openStreamOn: aPath
	self stream: (FileStream fileNamed: aPath).
	self stream binary