<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.SetScriptingDefineSymbolsForGroup.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| targetGroup | The name of the group of devices. |
| defines | Symbols for this group can be passed as an array or as a string separated by semicolons. |

### Description

Deprecated. Use PlayerSettings.SetScriptingDefineSymbols instead.

Set user-specified symbols for script compilation for the given build target group.

The second argument, `defines`, is a string of preprocessor values. The values that this string contains is located in "Scripting Define Symbols". This can be located in the Configuration section of the PlayerSettings.

Additional resources: Platform Dependent Compilation.
