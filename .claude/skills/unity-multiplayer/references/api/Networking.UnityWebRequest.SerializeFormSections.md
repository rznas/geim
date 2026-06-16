<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.UnityWebRequest.SerializeFormSections.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| multipartFormSections | A List of IMultipartFormSection objects. |
| boundary | A unique boundary string to separate the form sections. |

### Returns

**byte[]** A byte array of raw multipart form data.

### Description

Converts a List of IMultipartFormSection objects into a byte array containing raw multipart form data.

Additional resources: GenerateBoundary.
