<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.Content.ExternalFileReference.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Desribes an externally referenced file. This is returned as part of the WriteResult when writing a serialized file.

### Properties

| Property | Description |
| --- | --- |
| filePath | The path of the file that is referenced. |
| guid | A GUID that represents the file being referenced. This GUID might be used to locate default editor resources, but generally pathName is used to identify externally referenced files. |
| type | The lookup resolution index for the GUID field in the editor. This is used in conjunction with the GUID internally and should not be modified. |
