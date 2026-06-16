<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ShaderKeywordFilter.GraphicsAPIConstraintAttribute-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| negate | Set to `true` to enable filter attributes when the graphics API doesn't match any of the `graphicsDeviceTypes`. |
| graphicsDeviceTypes | The array of graphics APIs to match to. |

### Description

Enable or disable shader keyword filter attributes based on the graphics API.

Unity enables filter attributes if the current build target matches any of the `graphicsDeviceTypes`.
