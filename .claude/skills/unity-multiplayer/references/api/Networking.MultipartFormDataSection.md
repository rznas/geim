<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.MultipartFormDataSection.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A helper object for form sections containing generic, non-file data.

This helper object is used similarly to the WWWForm method WWWForm.AddBinaryData. It is used to define non-file form sections.

### Properties

| Property | Description |
| --- | --- |
| contentType | Returns the value to use in this section's Content-Type header. |
| fileName | Returns a string denoting the desired filename of this section on the destination server. |
| sectionData | Returns the raw binary data contained in this section. Will not return null or a zero-length array. |
| sectionName | Returns the name of this section, if any. |

### Constructors

| Constructor | Description |
| --- | --- |
| MultipartFormDataSection | Raw data section, unnamed and no Content-Type header. |
