<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CommandBuffer.EnableShaderKeyword.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| keyword | Name of a global shader keyword to enable. |

### Description

Adds a command to enable a global keyword with a given name.

If a global keyword with the name you pass in does not exist, Unity creates one with that name when you call this function. To get all the global keywords that already exist, use Shader.globalKeywords. Note: it is more efficient to use EnableKeyword.

Additional resources: DisableShaderKeyword, Shader.EnableKeyword.
