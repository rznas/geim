<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Presets.Preset.IsObjectExcludedFromPresets.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns true if this Object is not available in the Preset system.

Creating a Preset using an Object that is Excluded from Preset will reset in an invalid Preset (Preset.IsValid() == false) and will not be usable to ApplyTo or UpdateProperties with any type of Object.
