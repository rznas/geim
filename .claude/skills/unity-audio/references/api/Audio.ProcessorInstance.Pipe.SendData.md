<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Audio.ProcessorInstance.Pipe.SendData.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| context | The context key which targets the other logical thread receiver. |
| data | The data to be received in the other logical thread. |

### Returns

**bool** True if this operation is currently possible. This can fail for instance when the ProcessorInstance is being in process of being disposed through ControlContext.DestroyProcessor, so you must guard against this if you are transferring resources.

### Description

Send data from IRealtime to IControl_1 or vice versa.
