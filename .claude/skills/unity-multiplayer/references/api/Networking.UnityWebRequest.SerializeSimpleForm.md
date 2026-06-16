<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.UnityWebRequest.SerializeSimpleForm.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| formFields | A dictionary containing the form keys and values to serialize. |

### Returns

**byte[]** A byte array containing the serialized form. The form's keys and values have been URL-encoded.

### Description

Serialize a dictionary of strings into a byte array containing URL-encoded UTF8 characters.

This method will URL-encode the strings, then concatenate them as if they were in an HTTP query string. Keys and values will be separated with an equals sign (=) and different key-value pairs will be separated with ampersands (&).
