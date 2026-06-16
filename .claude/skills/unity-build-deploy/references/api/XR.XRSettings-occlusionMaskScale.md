<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.XRSettings-occlusionMaskScale.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A scale applied to the standard occulsion mask for each platform.

Occlusion masks are used to increase performance by not rendering to pixels that cannot be seen through the XR headset. Some post-processing effects require data from pixels that cannot be seen through the XR headset's restricted field of vision (blur effects, for example) in order to avoid visual artifacts and other display errors. This property scales up the occlusion mask to ensure pixels outside of the XR headset's field of vision are rendered to, allowing post-processing effects to access the required texture data. Scaling up the occlusion mask will incur a performance penalty on the GPU due to the extra pixels being rendered.
