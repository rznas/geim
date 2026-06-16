<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CommandBuffer.ReleaseTemporaryRT.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| nameID | Shader property name for this texture. |

### Description

Add a "release a temporary render texture" command.

Releases a temporary render texture with given name. Presumably you have called ::GetTemporaryRT to create it before.

Any temporary textures that were not explicitly released will be removed after camera is done rendering, or after Graphics.ExecuteCommandBuffer is done.

Additional resources: GetTemporaryRT.
