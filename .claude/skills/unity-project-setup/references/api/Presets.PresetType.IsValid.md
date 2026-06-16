<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Presets.PresetType.IsValid.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**bool** Returns true if the PresetType is valid. Returns false otherwise.

### Description

Checks whether a PresetType corresponds with a valid native or managed class.

A PresetType is invalid when a MonoScript has been removed from the project, or the file containing a MonoBehaviour has been renamed and no longer matches the class name, or the type is explicitely excluded using ExcludeFromPresetAttribute.
