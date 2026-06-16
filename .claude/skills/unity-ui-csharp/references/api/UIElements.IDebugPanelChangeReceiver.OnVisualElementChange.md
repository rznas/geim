<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.IDebugPanelChangeReceiver.OnVisualElementChange.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| element | The element that changed. |
| changeType | A string that contains the comma-separated value of what has changed. |

### Description

Receives notifications for every change that occurs on the panel's visual elements. This method is exclusively available in development builds and the Editor, as it serves as a debug feature that complements the profiling of an application.

The number of times the callback is called, the value returned, and the order in which they are returned are subject to change between each minor release of Unity, as this is considered internal. Related to PanelSettings.SetPanelChangeReceiver
