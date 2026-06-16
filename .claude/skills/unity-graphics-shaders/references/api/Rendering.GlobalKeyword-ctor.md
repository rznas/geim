<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.GlobalKeyword-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | The name of the global shader keyword. |

### Description

Creates and returns a GlobalKeyword struct that represents an existing global shader keyword.

If a global shader keyword with the given name exists in Unity's internal list of global shader keywords, Unity creates and returns a `GlobalKeyword` struct to represent it. Otherwise, Unity still creates a struct, but throws an error.

To add a new global shader keyword to Unity's internal list at the same time as creating a `GlobalKeyword` to represent it, use GlobalKeyword.Create instead.

To get all the global shader keywords that already exist, use Shader.globalKeywords.

Additional resources: Shader variants and keywords, LocalKeyword, GlobalKeyword, EnableKeyword, DisableKeyword, SetKeyword, IsKeywordEnabled, enabledGlobalKeywords, globalKeywords.
