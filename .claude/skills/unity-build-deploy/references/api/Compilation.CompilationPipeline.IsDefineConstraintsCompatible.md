<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Compilation.CompilationPipeline.IsDefineConstraintsCompatible.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| defines | A string array of #define directives. |
| defineConstraints | A string array of #define directives to to check compatibility against. |

### Returns

**bool** True if the specified #define constraints are satisfied by the specified #define directives. Otherwise returns False.

### Description

Allows you to test whether the specified #define constraints are satisfied by the specified list of #define directives.

Additional resources: Assembly, CompilationPipeline.
