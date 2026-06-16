<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/HideFlags.HideInHierarchy.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The object will not appear in the hierarchy.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Creates 5 planes and hides them from the Hierarchy in the Editor.    void Start()
    {
        for (int i = 0; i < 5; i++)
        {
            GameObject createdGO = GameObject.CreatePrimitive(PrimitiveType.Plane);
            createdGO.hideFlags = HideFlags.HideInHierarchy;
        }
    }
}
```
