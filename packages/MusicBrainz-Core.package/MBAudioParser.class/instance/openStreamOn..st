initialize
openStreamOn: aPath 
	self track filepath: aPath.
	self stream: (FileStream fileNamed: aPath).
	self stream binary