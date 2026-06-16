<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ControllerColliderHit-point.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The impact point in world space.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void OnControllerColliderHit(ControllerColliderHit hit)
    {
        // print the impact point
        Debug.Log("I impacted at: " + hit.point);
    }
}
```
