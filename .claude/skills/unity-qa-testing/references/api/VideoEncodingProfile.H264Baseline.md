<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VideoEncodingProfile.H264Baseline.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Encode video with the baseline profile.

This is the most basic level of the encoder profiles. The decoding process for this profile is less complex, which is suitable for devices with lightweight processing. This profile doesn’t include advanced features, such as B-frames or Context-Adaptive Binary Arithmetic Coding (CABAC) which sometimes can cause bugs. Therefore, the baseline profile code is usually safer and less prone to bugs. The simpler the profile, the less the compression. As the baseline profile is the simplest of all three profiles, compression with this profile yields slightly bigger files. Use this profile for simpler devices with limited processing power, like mobile phones or embedded systems.
