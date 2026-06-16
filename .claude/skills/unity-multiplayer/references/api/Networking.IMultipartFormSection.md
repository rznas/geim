<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.IMultipartFormSection.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An interface for composition of data into multipart forms.

In order to provide a finer level of control for those wishing to generate multipart form data, but without forcing most users to refer to [RFC 2388](http://tools.ietf.org/html/rfc2388), Unity provides this simple interface which the UnityWebRequest API can use to serialize complex data into properly-formatted bytes.

For convenience, the two general types of form sections have been encapsulated into two stock implementations of IMultipartFormSection. Both stock implementations are simply controlled via their constructors.

IMultipartFormSection implementors are converted into bytes via UnityWebRequest.SerializeFormSections.

Additional resources: MultipartFormDataSection, MultipartFormFileSection.

### Properties

| Property | Description |
| --- | --- |
| contentType | Returns the value to use in the Content-Type header for this form section. |
| fileName | Returns a string denoting the desired filename of this section on the destination server. |
| sectionData | Returns the raw binary data contained in this section. Must not return null or a zero-length array. |
| sectionName | Returns the name of this section, if any. |
