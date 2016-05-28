parsing
skipFrame: frameSize
	"comment stating purpose of message"
	
	self stream position: (self stream position + frameSize )