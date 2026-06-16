<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MPE.RoleProviderAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An attribute used to decorate function that defines how a slave process can interact with a main instance of Unity.

### Properties

| Property | Description |
| --- | --- |
| eventType | The event that the process triggered. |
| level | The process level (either master or slave) that the handler is registered on. |
| name | The name of the RoleProvider. For example, StandaloneProfiler. |

### Constructors

| Constructor | Description |
| --- | --- |
| RoleProviderAttribute | Constructor for a RoleProviderAttribute. Allows you to register a handler that is triggered when a specific ProcessEvent is triggered in a UnityEditor process of a specific ProcessLevel. |
