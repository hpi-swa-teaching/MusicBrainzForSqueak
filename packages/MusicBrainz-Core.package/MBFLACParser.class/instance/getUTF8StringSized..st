parsing
getUTF8StringSized: anInteger
	^ (self stream next: anInteger) asString