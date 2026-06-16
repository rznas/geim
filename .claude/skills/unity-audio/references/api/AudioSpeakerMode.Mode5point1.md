<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioSpeakerMode.Mode5point1.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The Surround 5.1 speaker setup which contains six channels.

Channel count is set to 6. The Surround 5.1 speaker mode contains six channels:

- Front left
- Front right
- Front center
- Low-Frequency Effects (LFE subwoofer)
- Rear left
- Rear right

LFE is a specialized, band-limited audio channel (typically from 3 to 120 Hz) designed to deliver intense, deep bass - such as explosions or rumbles.

A subwoofer is a speaker that plays very low frequencies (bass), typically from 20 to 120 Hz.

If not supported, Unity uses what the OS/hardware supports (often Stereo). This speaker mode is common for high-end PC or console setups, TV, movies, theaters, home cinemas, and more.

Pros:

- 5.1 has LFE so low sounds and rumbles are captured.
- 5.1 has more discrete surround than speaker modes with fewer channels.

Cons:

- 5.1 isn't available on most mobile devices.
- You need to test the audio more.
- 5.1 uses more CPU resources than modes with fewer channels.
- This mode might not sound good if Unity needs to downmix it to stereo.
