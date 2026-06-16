<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Audio.ControlContext.CreateManualControlContext.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| format | The initial AudioFormat the returned ControlContext.Manual will run in. |

### Returns

**Manual** A ControlContext.Manual you own and control, that must later be disposed.

### Description

Create a new ControlContext with additional functionality you can drive manually.

This context is completely separate from builtIn and shares no data, lifetime or callbacks. It's an error to mix and match ProcessorInstances from different ControlContexts. You must manually destroy this instance.
