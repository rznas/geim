<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ShaderKeywordFilter.ApplyRulesIfNotGraphicsAPIAttribute-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| graphicsDeviceTypes | The array of graphics APIs to match to. |

### Description

Enable or disable shader keyword filter attributes based on the graphics API.

Unity enables filter attributes if the current build target doesn't match any of the `graphicsDeviceTypes`.
