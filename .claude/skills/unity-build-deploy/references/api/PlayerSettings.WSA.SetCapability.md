<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.WSA.SetCapability.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| capability | UWP Capability type to change. |
| value | True to include the Capability in the UWP build or false to remove it. |

### Description

Includes or removes the specified UWP Capability in the Universal Windows Platform build.

In the Editor, Unity displays this as a list of checkboxes under **Capabilities** in UWP Player Settings.
**Important:** Unity writes these settings to the package manifest when it builds Universal Windows Platform for the first time. Building into an existing Universal Windows Platform build folder does not update the package manifest and does not apply any changes.
