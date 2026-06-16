<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ShaderGUI.ValidateMaterial.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| material | The material to validate. |

### Description

When the user loads a Material using this ShaderGUI into memory or changes a value in the Inspector, the Editor calls this method.

Use this method to ensure that when you import a Material or modify material properties in an Inspector, keywords and passes are enabled or disabled accordingly.
