<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.BatchRendererGroup.SetLoadingMaterial.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| material | The material to display while a shader is compiling. If this value is `null`, Unity does not display anything. |

### Description

Set the loading material for the `BatchRendererGroup`.

When you render with a `BatchRendererGroup` and a shader is currently compiling, Unity doesn't display the default loading shader. Use this function to display a given material instead.
