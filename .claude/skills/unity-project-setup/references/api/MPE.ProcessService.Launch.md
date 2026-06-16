<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MPE.ProcessService.Launch.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| roleName | The name that corresponds to the RoleProviderAttribute of the process to start. |
| keyValuePairs | Arguments passed to the slave process. |

### Returns

**int** The process ID of the slave process. A value of 0 means the slave process could not be started.

### Description

Launches a secondary instance of UnityEditor on the same project as the master instance.
