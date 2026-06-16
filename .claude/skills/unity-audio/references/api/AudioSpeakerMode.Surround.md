<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioSpeakerMode.Surround.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The Surround 5.0 speaker setup which contains five channels.

The Surround 5.0 speaker mode contains 5 channels:

- Front left
- Front center
- Front right
- Surround left
- Surround right (no subwoofer).

If not supported, Unity picks a supported mode (often AudioSpeakerMode.Stereo or AudioSpeakerMode.Mode5point1) if that’s what the OS is set to. Best for venues or specs that require 5.0 and for rigs without a subwoofer.

Pros:

- Surround contains a center channel and you don't need to manage a subwoofer.

Cons:

- 5.0 Surround is less common than 5.1.
- 5.0 Surround has no LFE channel so doesn't handle low sounds and rumbles as well as 5.1 and 7.1 speaker modes.
