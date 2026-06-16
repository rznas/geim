<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Vector3.ClampMagnitude.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns a copy of `vector` with its magnitude clamped to `maxLength`.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    // Move the object around with the arrow keys but confine it
    // to a given radius around a center point.    public Vector3 centerPt;
    public float radius;    void Update()
    {
        // Get the new position for the object.
        Vector3 movement = new Vector3(Input.GetAxis("Horizontal"), 0, Input.GetAxis("Vertical"));
        Vector3 newPos = transform.position + movement;        // Calculate the distance of the new position from the center point. Keep the direction
        // the same but clamp the length to the specified radius.
        Vector3 offset = newPos - centerPt;
        transform.position = centerPt + Vector3.ClampMagnitude(offset, radius);
    }
}
```
