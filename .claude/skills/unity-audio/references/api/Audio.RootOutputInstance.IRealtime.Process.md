<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Audio.RootOutputInstance.IRealtime.Process.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| input | The complete dependency of all other EarlyProcessing for all other ProcessorInstances. If you are using other/foreign scriptable ProcessorInstances, your work must depend on or complete this parameter. |

### Description

Schedule your main body of work in parallel to everything else. If you are using jobs, you are required to manually keep track of dependencies and finish them later.
