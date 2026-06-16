<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Audio.ProcessorInstance.IRealtime.Update.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| context | The context giving access to available data. |
| pipe | Cross-thread communications pipe. |

### Description

Implement this function to react to data sent to the ProcessorInstance or communicate something back.

By default, this is called when there's data sent to your ProcessorInstance. This can be changed by setting flagsCreationParametersationParameters.controlUpdateSetting"/> when initially creating the ProcessorInstance. 

Additional resources: ProcessorInstance.IControl_1.Update
