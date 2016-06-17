access
setMMX: aValue
	" true is set, false is off. May not be supported "
	self primSetMMX: self fileHandle useMMX: aValue  