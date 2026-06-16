<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.UnityWebRequest-certificateHandler.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Holds a reference to a CertificateHandler object, which manages certificate validation for this UnityWebRequest.

Setting this property to `null` makes the platform use the default certificate validation, which will validate certificates against a root certificate authority store (most commonly Operating System store).

Not all platforms support certificate validation callbacks. See CertificateHandler for a list of supported platforms.

This property cannot be changed after calling SendWebRequest.

*Default value:* `null`.
