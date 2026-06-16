<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.UnityWebRequest-method.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Defines the HTTP verb used by this UnityWebRequest, such as `GET` or `POST`.

This property may be set to any non-zero-length alphabetic string, and will be used verbatim. Therefore, this property can be employed to set the UnityWebRequest to transmit any custom HTTP verb required by an application.

This property cannot be changed after calling Send.

**Note:** This method will always return strings in UPPERCASE. When setting the verb, the input value will automatically be converted to UPPERCASE.

*Default value:* `GET`.
