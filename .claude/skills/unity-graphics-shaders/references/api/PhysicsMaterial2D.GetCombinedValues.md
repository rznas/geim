<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PhysicsMaterial2D.GetCombinedValues.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| valueA | Friction or bounciness value used by one Collider2D. |
| valueB | Friction or bounciness value used by another Collider2D. |
| materialCombineA | The combined mode used by one Collider2D. |
| materialCombineB | The combined mode used by another Collider2D. |

### Returns

**float** The effective friction or bounciness value used in the collision response.

### Description

Calculates the effective value used when two Collider2D come into contact with their own PhysicsMaterial2D.

You can use this method to determine the exact friction or bounciness value applied when two Collider2D come into contact.
