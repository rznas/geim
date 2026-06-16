<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/DeviceSimulation.DeviceSimulatorPlugin.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Extend this class to create a Device Simulator plug-in.

Extend this class to create a Device Simulator plug-in. A plug-in lets you control custom simulation parameters from a UI inside the Control Panel of a Device Simulator window. Unity creates, destroys, and serializes a plug-in together with the Device Simulator window the plug-in is active in.

### Properties

| Property | Description |
| --- | --- |
| deviceSimulator | Device Simulator in which this plug-in is instantiated. |
| title | Title for the plug-in UI. |

### Public Methods

| Method | Description |
| --- | --- |
| OnCreate | Called when Unity creates the Device Simulator window. |
| OnCreateUI | The VisualElement that this method returns is embedded in the Device Simulator window. If the method returns null, plug-in UI is not embedded. |
| OnDestroy | Called when Device Simulator window is destroyed. |
