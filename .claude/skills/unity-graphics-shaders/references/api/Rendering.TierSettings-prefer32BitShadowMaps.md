<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.TierSettings-prefer32BitShadowMaps.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Whether Unity should try to use 32-bit shadow maps, where possible.

Most platforms have a fixed shadow map format that you cannot adjust. These vary in format, and can be 16-bit, 24-bit, or 32-bit, and can also be either float or integer based.

However, when you are targeting PlayStation 4 or platforms using DirectX 11 or DirectX 12, you can choose whether Unity should use a 16-bit or 32-bit float shadow map.

32-bit shadow maps give higher quality shadows than 16-bit, but they will use increased memory and bandwidth on the GPU.

In addition, 32-bit shadow maps can only be used if the depth buffer is also set to 32-bit.
