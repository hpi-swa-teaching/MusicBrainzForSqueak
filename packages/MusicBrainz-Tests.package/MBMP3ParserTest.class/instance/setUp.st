initialize
setUp
	
	super setUp.
	self parser: MBMP3Parser new.
	self parser stream: (MultiByteBinaryOrTextStream with: (OrderedCollection new) encoding: nil). 
	