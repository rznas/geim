<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ModelImporter-resampleCurves.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

If set to false, the importer will not resample curves when possible. Read more about animation curve resampling.

Notes:

- Some unsupported FBX features (such as PreRotation or PostRotation on transforms) will override this setting. In these situations, animation curves will still be resampled even if the setting is disabled. For best results, avoid using PreRotation, PostRotation and GetRotationPivot.

- This option was introduced in Version 5.3. Prior to this version, Unity's import behaviour was as if this option was always enabled. Therefore enabling the option gives the same behaviour as pre-5.3 animation import.
