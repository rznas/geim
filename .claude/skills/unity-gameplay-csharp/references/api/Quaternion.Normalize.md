<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Quaternion.Normalize.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Converts this quaternion to a quaternion with the same orientation but with a magnitude of 1.0.

Note that this method changes the current quaternion. If you want to keep the current quaternion unchanged, use the normalized property instead.

If this quaternion is too small to be normalized it will be set to Quaternion.identity.

Additional resources: normalized variable.
