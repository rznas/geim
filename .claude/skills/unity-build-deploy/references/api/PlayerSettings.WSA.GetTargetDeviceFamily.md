<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.WSA.GetTargetDeviceFamily.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| family | Device Family type to check. |

### Returns

**bool** Returns true if the project targets the device family. Otherwise, returns false.

### Description

Checks if your project targets the specified device family.

In the Editor, Unity displays this as a list of checkboxes under **Supported Device Families** in UWP Player Settings. If you do not indicate that your Universal Windows Platform application supports any device family type, it defaults to the Windows.Universal family.
**Important:** Unity writes these settings to the package manifest when it builds Universal Windows Platform for the first time. Building into an existing Universal Windows Platform build folder does not update the package manifest and does not apply any changes.
