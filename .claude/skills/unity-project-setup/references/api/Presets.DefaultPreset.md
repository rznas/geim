<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Presets.DefaultPreset.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This structure defines a default Preset. See Preset.GetDefaultListForType and Preset.SetDefaultListForType for usage.

### Properties

| Property | Description |
| --- | --- |
| enabled | Set this value to false to disable this DefaultPreset setting from the default preset list without removing it. |
| filter | The search filter that is compared against the object instance. The DefaultPreset.m_Preset is applied to the object instance if it matches the search filter. |
| preset | The Preset applied to an object instance when it matches the search filter defined by DefaultPreset.m_Filter. |
