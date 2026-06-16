<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingShader.SetFloat.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | The name of the property being set. |
| nameID | The ID of the property as given by Shader.PropertyToID. |
| val | The float value to set. |

### Description

Sets the value of a float uniform.

Only shaders defined in the .raytrace file can access the value you designate as the argument for this method. To make this value accessible to all ray tracing shader types (closest hit, any hit, miss, etc.), call the Shader.SetGlobalFloat method instead.
