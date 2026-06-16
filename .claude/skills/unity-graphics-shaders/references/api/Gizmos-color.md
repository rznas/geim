<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Gizmos-color.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Sets the Color of the gizmos that are drawn next.

You can apply any color to gizmos. You can make a gizmo transparent by setting the alpha component of Color to a value lower than 1. The following example shows how to create a red gizmo.

```csharp
using UnityEngine;public class ExampleClass : MonoBehaviour
{
    void OnDrawGizmosSelected()
    {
        // Draws a 5 unit long red line in front of the object
        Gizmos.color = Color.red;
        Vector3 direction = transform.TransformDirection(Vector3.forward) * 5;
        Gizmos.DrawRay(transform.position, direction);
    }
}
```
