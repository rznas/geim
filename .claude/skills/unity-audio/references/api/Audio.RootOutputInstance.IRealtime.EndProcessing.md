<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Audio.RootOutputInstance.IRealtime.EndProcessing.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| output | A buffer with the same size as the AudioFormat passed into RootOutputInstance.IControl_1.Configure. |

### Description

Return the main result of your computation to the system in .

The contents written to will be additively added to the main audio output.
