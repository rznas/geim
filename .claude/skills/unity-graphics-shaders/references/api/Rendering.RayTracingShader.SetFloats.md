<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingShader.SetFloats.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | The name of the property being set. |
| nameID | The ID of the property as given by Shader.PropertyToID. |
| values | The float array to set. |

### Description

Sets the values for a float array uniform.

Only shaders defined in the .raytrace file can access the values you designate as the argument for this method. To make these values accessible to all ray tracing shader types (closest hit, any hit, miss, etc.), call the Shader.SetGlobalFloatArray method instead.
