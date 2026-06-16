<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mathf.Infinity.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A representation of positive infinity (Read Only).

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Casts a ray from (0,0,0) towards (0,0,1) to the infinity and prints a message
    // if any object has touched the ray.
    // To test it, just place any object and intersect it with the white drawn line    void Update()
    {
        // shows the line that follows the ray.
        Debug.DrawLine(Vector3.zero, Vector3.forward * 100);
        if (Physics.Raycast(Vector3.zero, Vector3.forward, Mathf.Infinity))
        {
            print("There is something in front of the object!");
        }
    }
}
```
