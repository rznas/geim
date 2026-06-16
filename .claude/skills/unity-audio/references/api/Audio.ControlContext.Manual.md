<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Audio.ControlContext.Manual.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A manually-managed ControlContext for usage outside of the normal Unity audio system (tests, custom audio system).

This allows you to drive normally automatic functionality on scriptable processors contained within this ControlContext. It's currently undefined behaviour to call any APIs from different threads simultaneously, so this can currently only be used for "offline usage".

### Properties

| Property | Description |
| --- | --- |
| context | The context being manually driven. |

### Public Methods

| Method | Description |
| --- | --- |
| BeginMix | Begin a mix. |
| Dispose | Dispose a custom-created ControlContext. |
| EndMix | End a previously begun mix, additionally rendering any RootOutputInstances into . |
| Update | Update and submit any queued commands found on ControlContext, making them available to the mixing functionality functions. |
