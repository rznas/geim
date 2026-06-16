<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.GraphicsSettings.SetShaderMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| type | Built-in shader type to change. |
| mode | Mode to use for built-in shader. |

### Description

Set built-in shader mode.

By default, certain parts of rendering pipeline in Unity (e.g. deferred shading light calculations) use built-in shader. However, it is possible to setup a custom shader to replace the built-in functionality, or to turn off support for it altogether.

When setting BuiltinShaderMode.UseCustom, you also need to indicate which shader to use. See SetCustomShader.
 
 Additional resources: GetShaderMode, SetCustomShader, Graphics Settings.
