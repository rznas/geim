<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Media.H264EncoderAttributes-numConsecutiveBFrames.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The maximum number of consecutive B frames between I and P frames.

Set a value of 0 to disable B frames. Set a value of 1 or greater to enable B frames. If you use the Baseline profile, the number of consecutive B frames is always zero. The encoder overrides nonzero values.

 _Windows:_ The maximum number of B frames allowed is 2.

 _macOS:_ Set a nonzero value to enable B frames. When B frames are enabled, you cannot control the maximum number of B frames.
