<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.WSA.GetCapability.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| capability | UWP Capability type to check. |

### Returns

**bool** Returns true if your project sets the specified capability. Otherwise, returns false.

### Description

Checks if the your project sets the specified UWP Capability.

In the Editor, Unity displays this as a list of checkboxes under **Capabilities** in UWP Player Settings.
**Important:** Unity writes these settings to the package manifest when it builds Universal Windows Platform for the first time. Building into an existing Universal Windows Platform build folder does not update the package manifest and does not apply any changes.
