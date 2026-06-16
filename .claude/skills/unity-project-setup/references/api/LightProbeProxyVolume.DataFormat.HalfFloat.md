<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightProbeProxyVolume.DataFormat.HalfFloat.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A 16-bit half floating-point format is used for the Light Probe Proxy Volume 3D texture.

Using this format will incur a CPU performance impact since the data has to be converted from float to half-float when generating the 3D texture data associated with the Light Probe Proxy Volume component.

Texture sampling perfomance will increase on the GPU when using this format. Additionally, less GPU memory will be used.
