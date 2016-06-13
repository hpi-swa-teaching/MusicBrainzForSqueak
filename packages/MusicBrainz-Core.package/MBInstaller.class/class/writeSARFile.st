exporting
writeSARFile
|packages folder zip mczStream workingCopy version|
folder := 'albums'.

zip := ZipArchive new.

packages := #('MusicBrainz-Core' 'MusicBrainz-UI').
packages do: [ :package | 
mczStream := RWBinaryOrTextStream on: (String new: 10000).
workingCopy := MCWorkingCopy forPackage: (MCPackage new name: package).
version := workingCopy newVersion fileOutOn: mczStream.
(zip addString: mczStream contents as: package, '.mcz') desiredCompressionLevel: 0].

zip addTree: Smalltalk imagePath match: [:e | e fullName startsWith:
    Smalltalk imagePath , FileDirectory slash , folder].
zip addString:  'self fileInMonticelloZipVersionNamed: ''' , (packages first), '.mcz''.
self fileInMonticelloZipVersionNamed: ''' , (packages second), '.mcz''.
(self membersMatching: ''' , folder , FileDirectory slash , '*.*'') do: [ :f | self
    extractMember: f].' as: 'install/preamble'.
zip writeToFileNamed: 'MusicBrainz' , '.sar'
