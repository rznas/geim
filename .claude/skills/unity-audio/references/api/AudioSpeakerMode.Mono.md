<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioSpeakerMode.Mono.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The speakers are mono and contain one channel.

The Mono audio speaker mode contains one audio channel (channel count is set to 1). 

Mono plays identical audio in the left and right channels, which makes it ideal for users with single-sided deafness, off‑center listening, or a missing/broken earbud. It also works better with many hearing‑assistive devices.

Most devices use AudioSpeakerMode.Stereo. If the device doesn't support mono, Unity uses stereo and reports the actual mode. The OS might still play mono as the same signal in left and right channels.

Pros:

- Mono works on almost all devices.
- It's simple to mix and test.
- It has low CPU and memory use.
- Users can listen with one earphone without missing audio from other channels.

Cons:

- Mono doesn't have stereo or surround.
- 3D sounds lose direction.
- Sounds can crowd each other in one channel.
- This speaker mode has less spatial immersion.
- LFE information is often dropped in mono.
