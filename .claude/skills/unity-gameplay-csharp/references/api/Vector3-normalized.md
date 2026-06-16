<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Vector3-normalized.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The unit vector in the direction of the current vector.

This property holds a normalized vector based on the current vector. The normalized vector has a magnitude of 1 and is in the same direction as the current vector. If the current vector is too small to be normalized, then the value of `normalized` is the zero vector. A vector is too small to be normalized if it is considered equal to the zero vector. Note that this does not modify the current vector. To modify and normalize the current vector, use the instance version of the Normalize method.

Additional resources: Normalize.
