<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RaycastHit2D-operator_RaycastHit2D.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| hit | The RaycastHit2D to being checked for valid results. |

### Description

Implicit operator used to return a `true` or `false` result indicating if the result is valid or not.

When using any physics query that returns a RaycastHit2D, you should always first check to see if it contains a valid result which indicates a hit (intersection) was detected. You can do this by checking if the RaycastHit2D is `true` or `false`.

**NOTE:** A valid result is indicated by the field RaycastHit2D.Collider referring to a valid Collider2D i.e. not being NULL. This operator is therefore equivalent to checking if that field is NULL ( `false` ) or not NULL ( `true` ).

```csharp
using UnityEngine;public class ExampleClass : MonoBehaviour
{
    public Vector2 direction;    void Update()
    {
        // Cast a ray in the direction specified in the inspector.
        RaycastHit2D hit = Physics2D.Raycast(transform.position, direction);        // If something was hit, draw a line from the start position to the point we intersected.
        if (hit)
            Debug.DrawLine(transform.position, hit.point, Color.yellow);
    }
}
```
