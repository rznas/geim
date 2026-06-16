<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ShaderUtil.GetCurrentCustomEditor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| shader | The shader to obtain the custom editor. |

### Returns

**string** The current custom editor full class name.

### Description

Gets the current custom editor for the shader you pass in.

Depending on the render pipeline asset assigned in your Graphics Settings, the custom editor can change if the shader has a different custom editor for one or multiple render pipeline assets.
