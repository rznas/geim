<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Vector2-operator_Vector3.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| v | The input Vector3 value to convert to a Vector2. |

### Returns

**Vector2** A Vector2 initialized with components `v.x` and `v.y`.

### Description

Converts a Vector3 to a Vector2.

An implicit conversion operator that converts an input Vector3 value to a Vector2. The Vector3.x and Vector3.y components are used to initialize the result and the Vector3.z component is discarded.

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    void Start()
    {
        Vector2 v2 = new Vector2(1, 2);
        Debug.Log("Vector2 is: " + v2);        // convert v2 to v3
        Vector3 v3 = v2;
        Debug.Log("Vector3 is: " + v3);        // convert v3 to new Vector3
        Debug.Log("Set v3 to (3, 4, 5)");
        v3 = new Vector3(3, 4, 5);        // convert v3 to v2
        v2 = v3;
        Debug.Log("Vector2 is: " + v2);
    }
}
```
