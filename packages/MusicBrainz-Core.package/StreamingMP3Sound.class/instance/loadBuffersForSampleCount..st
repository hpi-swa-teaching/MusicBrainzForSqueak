private
loadBuffersForSampleCount: count
        "Load the sound buffers for all tracks with the next count
samples from the MPEG
file sound track."

        | snd buf |
        1 to: mixer sounds size do: [:i |
                snd := mixer sounds at: i.
                buf := snd samples.
                buf monoSampleCount = count ifFalse: [
                        buf := SoundBuffer newMonoSampleCount: count.
                        snd setSamples: buf samplingRate:
streamSamplingRate].
                i = 1 ifTrue: [  "first channel"
                                mpegFile
                                        audioReadBuffer: buf
                                        stream: mpegStreamIndex
                                        channel: 0]
                        ifFalse: [  "all other channels"
                                mpegFile
                                        audioReReadBuffer: buf
                                        stream: mpegStreamIndex
                                        channel: 1]].
        mixer reset.
