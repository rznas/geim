<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioImporter.ClearSampleSettingOverride.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| platformGroup | The platform for which to clear the overrides.  See BuildTargetGroup for the complete list of options. |
| platform | The platform for which to clear the overrides.  See BuildTargetGroup for the complete list of options and type the desired platform enum name in the form of a string. |

### Returns

**bool** Returns true if any overrides were actually cleared.

### Description

Clears the sample settings override for the given platform.

This reverts the given platform override sample override settings, making that platform use the defaultSampleSettings..
