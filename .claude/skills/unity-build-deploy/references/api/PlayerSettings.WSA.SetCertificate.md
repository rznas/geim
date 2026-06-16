<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.WSA.SetCertificate.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| path | The relative Asset path to the Certificate file (.pfx). |
| password | The certificate password. If the certificate does not require a password, use an empty string. |

### Returns

**bool** Returns true if Unity successfully updates the certificate. Otherwise, returns false.

### Description

Sets the certificate to use to sign the Universal Windows Platform application package.

In the Editor, Unity displays this under **Certificate** in UWP Player Settings.
