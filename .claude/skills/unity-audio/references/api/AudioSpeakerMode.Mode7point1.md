<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioSpeakerMode.Mode7point1.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The Surround 7.1 speaker setup which contains eight channels.

The Surround 7.1 speaker mode contains eight channels:

- Front left
- Front right
- Front center
- Low-Frequency Effects (LFE subwoofer)
- Side left
- Side right
- Rear left
- Rear right

If a device doesn't support this speaker mode, Unity typically falls back to AudioSpeakerMode.Mode5point1 or AudioSpeakerMode.Stereo. This speaker mode is common for high-end PC or console setups, TV, movies, theaters, home cinemas, and more.

Pros: 

- 7.1 provides better immersion because of all the angles covered. 

Cons:

- Fewer devices support this speaker mode.
- You need to test it more.
- 7.1 uses more CPU resources than modes with fewer channels.
