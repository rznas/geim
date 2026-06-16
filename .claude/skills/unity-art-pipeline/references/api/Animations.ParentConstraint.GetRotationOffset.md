<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.ParentConstraint.GetRotationOffset.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| index | The index of the constraint source. |

### Returns

**Vector3** The rotation offset, as Euler angles.

### Description

Gets the rotation offset associated with a source by index.

Throws InvalidOperationException, if the list of sources is empty. Throws ArgumentOutOfRangeException, if the index is invalid.
