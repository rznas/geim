<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioSpeakerMode.Quad.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The Quad 4.0 speaker setup which contains four channels.

The Quad 4.0 speaker mode contains four channels:

- Front left
- Front right
- Rear left
- Rear right

Channel count is set to 4. You can send different audio to each channel, which can create a more immersive, simple, surround experience. If a device doesn't support this mode, Unity picks a supported mode (often AudioSpeakerMode.Stereo).

This mode is common in fixed installations and museums. 

Pros:

- Quad is simple surround for four-speaker setups.

Cons:

- Quad is rare in homes.
- It's harder to test.
- It requires more setup.
