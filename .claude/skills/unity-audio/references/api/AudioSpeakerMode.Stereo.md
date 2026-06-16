<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioSpeakerMode.Stereo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The speakers are stereo and contain two channels.

The Stereo speaker mode has two output channels: left and right. This means you can send different audio to each channel, so in headphones, each ear can hear different content. This mode is the standard for most devices (speakers, TVs, headphones) and is best suited for mobile, PC, web, and virtual reality (VR) headsets. Channel count is set to 2.

Pros:

- Stereo is universally supported across platforms.
- It's ideal for headphones.
- It allows straightforward 3D via head-related transfer function (HRTF) spatializers.
- Stereo has efficient CPU and memory usage compared to multichannel.

Cons:

- Stereo has no discrete surround channels - Unity downmixes surround content to the left and right channels.
