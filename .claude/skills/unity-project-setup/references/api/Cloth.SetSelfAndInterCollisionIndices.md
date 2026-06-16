<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Cloth.SetSelfAndInterCollisionIndices.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| indices | List of cloth particles indices to use for cloth self and/or inter collision. |

### Description

This allows you to set the cloth indices used for self and inter collision.

The same set of indices is used in both situations if necessary. To enable self-collision, both self-collision distance and self-collision stiffness should be set to to non-zero values. To enable inter-collision, both inter-collision distance and inter-collision stiffness should be set to to non-zero values.
