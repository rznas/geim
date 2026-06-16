<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/HashUtilities.QuantisedMatrixHash.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| value | The Matrix4x4 to hash. |
| hash | The computed hash. |

### Description

Compute a Hash128 of a Matrix4x4.

The Matrix4x4 is quantized before the hashing with a step of 0.0005.
