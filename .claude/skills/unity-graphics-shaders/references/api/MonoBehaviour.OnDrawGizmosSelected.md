<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MonoBehaviour.OnDrawGizmosSelected.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Implement OnDrawGizmosSelected to draw a gizmo if the object is selected.

Gizmos are drawn only when the object is selected. Gizmos are not pickable. This is used to ease setup. For example an explosion script could draw a sphere showing the explosion radius.

```csharp
using UnityEngine;public class GizmoTest : MonoBehaviour
{
    public float explosionRadius = 5.0f;    void OnDrawGizmosSelected()
    {
        // Display the explosion radius when selected
        Gizmos.color = new Color(1, 1, 0, 0.75F);
        Gizmos.DrawSphere(transform.position, explosionRadius);
    }
}
```

Additional resources: OnDrawGizmos.
