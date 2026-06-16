<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Vector3Int-operator_Vector3Int.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| v | The Vector3Int to be converted to a Vector3. |

### Returns

**Vector3** The converted Vector3 result.

### Description

Converts a Vector3Int to a Vector3.

An implicit conversion operator that converts an input Vector3Int value to a Vector3. The int components of the input are implicitly converted to floats when creating the result.

```csharp
// Attach this script to a GameObject.
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        Vector3Int a = new Vector3Int(4,5,6);
        Debug.Log("Input Vector3Int is: " + a.ToString());        
        Vector3 result = a;
        Debug.Log("Result Vector3 is: " + result.ToString());
    }
}
```
