<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Vector4-operator_Vector4.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Converts a Vector4 to a Vector3.

An implicit conversion of a Vector4 to a Vector3. The Vector4.w is discarded.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        // Create and display a Vector4.
        Vector4 vector4;        vector4 = new Vector4(1.0f, 2.0f, 3.0f, 4.0f);
        Debug.Log("Vector4: " + vector4);        // Convert the Vector4 into a Vector3.
        Vector3 vector3;
        vector3 = vector4;        // The 4.0f is not copied into the Vector3.
        // Show (1.0f, 2.0f, 3.0f).
        Debug.Log("Vector3: " + vector3);
    }
}
```
