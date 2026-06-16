<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MPE.RoleProviderAttribute-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | The name of the RoleProvider. For example, StandaloneProfiler. |
| eventType | The event that the process triggered. |
| level | The process level (either master or slave) that this handler should be registered on. |

### Description

Constructor for a RoleProviderAttribute. Allows you to register a handler that is triggered when a specific ProcessEvent is triggered in a UnityEditor process of a specific ProcessLevel.
