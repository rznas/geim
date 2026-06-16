<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MonoBehaviour.OnDrawGizmos.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Implement OnDrawGizmos if you want to draw gizmos that can be pickable and are always drawn.

Allows you to quickly pick important objects in your Scene. When you select a child GameObject's gizmo, it selects the parent GameObject. this is because pickability is based on the callback’s host GameObject, not the transform used for drawing. To make a child GameObject’s gizmo directly selectable, implement `OnDrawGizmos` or `OnDrawGizmosSelected` on the child GameObject’s component.

`OnDrawGizmos` uses a mouse position that is relative to the Scene View.

**Note**: If **Auto-hide gizmos** is enabled in the Scene View preferences, then `OnDrawGizmos` is not called on components that are collapsed in the Inspector.

Use MonoBehaviour.OnDrawGizmosSelected to draw gizmos when the GameObject is selected.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void OnDrawGizmos()
    {
        // Draw a yellow sphere at the transform's position
        Gizmos.color = Color.yellow;
        Gizmos.DrawSphere(transform.position, 1);
    }
}
```

Additional resources: OnDrawGizmosSelected.
