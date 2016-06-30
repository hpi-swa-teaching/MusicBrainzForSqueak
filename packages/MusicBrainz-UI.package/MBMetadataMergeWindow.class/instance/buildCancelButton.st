building
buildCancelButton
	|  cancelButtonSpec |

	cancelButtonSpec := self builder pluggableButtonSpec new.
	cancelButtonSpec 
		model: self;
		frame: (0@0.9 corner: 0.5@1);
		label: 'Cancel'.
	^ cancelButtonSpec