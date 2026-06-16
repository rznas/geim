<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioSpeakerMode.Prologic.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Stereo output, but data is encoded in a way that is picked up by a Pro Logic or Pro Logic 2 decoder and split into a 5.1 speaker setup.

The Pro Logic speaker mode is a surround matrix (up to 5 channels) encoded into 2-channel stereo (Dolby Pro Logic–style). Channel count is set to 2. Only use this speaker mode if you must support matrix decoding.

Without a decoder, it just plays as normal stereo. 

Pros:

- Pro Logic works as stereo.
- You can decode to surround on compatible receivers.

Cons:

- This speaker mode isn't discrete.
- Quality depends on the decoder.
- Pro Logic is often treated as plain stereo today.
