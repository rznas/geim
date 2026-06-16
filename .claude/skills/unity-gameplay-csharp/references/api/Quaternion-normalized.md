<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Quaternion-normalized.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns this quaternion with a magnitude of 1 (Read Only).

When normalized, a quaternion keeps the same orientation but its magnitude is 1.0.

Note that the current quaternion is unchanged and a new normalized quaternion is returned. If you want to normalize the original quaternion, use the Normalize method instead.

If the quaternion is too small to be normalized Quaternion.identity will be returned.

Additional resources: Normalize function.
