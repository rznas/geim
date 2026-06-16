<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CommandBuffer.SetSinglePassStereo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| mode | Single-pass stereo mode for the camera. |

### Description

Add a command to set single-pass stereo mode for the camera.

This property is only used when Virtual Reality is enabled. The values passed to mode are found in the SinglePassStereoMode enum. This can be paired with set shader keyword (i.e. UNITY_SINGLE_PASS_STEREO) to temporarily disable stereo rendering for fullscreen effects. Note: changing single-pass stereo mode can cause rendering artifacts when stereo is enabled.
