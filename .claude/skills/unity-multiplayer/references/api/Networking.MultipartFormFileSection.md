<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.MultipartFormFileSection.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A helper object for adding file uploads to multipart forms via the [IMultipartFormSection] API.

This object is similar to the MultipartFormDataSection object, but all constructors additionally accept (and require) a `fileName` parameter. If you omit the `fileName` parameter, this object provides a default filename.

### Properties

| Property | Description |
| --- | --- |
| contentType | Returns the value of the section's Content-Type header. |
| fileName | Returns a string denoting the desired filename of this section on the destination server. |
| sectionData | Returns the raw binary data contained in this section. Will not return null or a zero-length array. |
| sectionName | Returns the name of this section, if any. |

### Constructors

| Constructor | Description |
| --- | --- |
| MultipartFormFileSection | Contains a named file section based on the raw bytes from data, with a custom Content-Type and file name. |
