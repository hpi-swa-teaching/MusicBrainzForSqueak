baseline
baseline: spec
    <baseline>
    spec
        for: #common
        do: [ 
            spec
                package: 'MusicBrainz-Core';
                package: 'MusicBrainz-Tests' with: [ spec requires: #('default') ].
            spec
                group: 'default' with: #('MusicBrainz-Core');
                group: 'Tests' with: #('MusicBrainz-Tests') ]