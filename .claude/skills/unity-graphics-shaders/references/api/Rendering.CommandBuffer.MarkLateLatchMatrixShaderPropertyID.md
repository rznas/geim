<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CommandBuffer.MarkLateLatchMatrixShaderPropertyID.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| matrixPropertyType | Camera matrix property type to be late latched. |
| shaderPropertyID | Shader property name id. |

### Description

Mark a global shader property id to be late latched. Possible shader properties include view, inverseView, viewProjection, and inverseViewProjection matrices. The Universal Render Pipeline (URP) uses this function to support late latching of shader properties. If you call this function when using built-in Unity rendering or the High-Definition Rendering Pipeline (HDRP), the results are ignored.
