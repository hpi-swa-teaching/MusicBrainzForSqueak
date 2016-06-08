building
method
| metadataLabel metadataValue splittedString |
splittedString:= self selectedMetadata findTokens: ':'.
metadataLabel := splittedString first.
metadataValue := splittedString second allButFirst.