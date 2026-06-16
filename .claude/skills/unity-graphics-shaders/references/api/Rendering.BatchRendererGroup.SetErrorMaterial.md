<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.BatchRendererGroup.SetErrorMaterial.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| material | The material to display when there is a problem with a shader or material. If this value is `null`, Unity does not display anything. |

### Description

Set the error material for the `BatchRendererGroup`. This material will be used internally by Unity to render the draw commands referring to erroneous shaders. You can also pass 'null' to this method to unset the material.

When you render with a `BatchRendererGroup` and there is a problem with the shader or material, Unity doesn't display the default error shader. Use this function to display a given material instead. **Note:** For performance reasons, Unity only displays this material in the Editor and in development builds. Unity does not display this material in release builds.
