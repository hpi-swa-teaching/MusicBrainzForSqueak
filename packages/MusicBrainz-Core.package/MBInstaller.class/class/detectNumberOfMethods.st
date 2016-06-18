installing
detectNumberOfMethods
	^ MBInstaller packages detectSum: [ :each | (PackageInfo default packageName: each) methods size]