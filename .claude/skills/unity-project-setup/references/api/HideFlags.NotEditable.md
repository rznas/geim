<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/HideFlags.NotEditable.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The object is not editable in the Inspector.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Create a plane and dont let it be modificable in the Inspector
    // nor in the Sceneview.    void Start()
    {
        GameObject createdGO = GameObject.CreatePrimitive(PrimitiveType.Plane);
        createdGO.hideFlags = HideFlags.NotEditable;
    }
}
```
