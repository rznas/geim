<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Physics.CheckBox.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| center | Center of the box. |
| halfExtents | Half the size of the box in each dimension. |
| orientation | Rotation of the box. |
| layerMask | A Layer mask that is used to selectively filter which colliders are considered when casting a ray. |
| queryTriggerInteraction | Specifies whether this query should hit Triggers. |

### Returns

**bool** True, if the box overlaps with any colliders.

### Description

Check whether the given box overlaps with other colliders or not.
