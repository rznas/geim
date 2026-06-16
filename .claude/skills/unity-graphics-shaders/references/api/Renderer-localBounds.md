<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Renderer-localBounds.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The bounding box of the renderer in local space.

This is the axis-aligned bounding box fully enclosing the object in local space.

For a SkinnedMeshRenderer, default local bounds are precomputed based on animations associated with that model, which means that the bounding box might be much bigger than the mesh itself. When SkinnedMeshRenderer.updateWhenOffscreen is enabled, Unity recomputes the local bounds every frame.

You can override the default bounding box by setting your own local space bounding box. This is mostly useful when the renderer uses a shader that does custom vertex deformations, and the default bounding box is not accurate. Use ResetLocalBounds to remove custom bounds override. Note that the custom local bounds value is not saved into scenes or prefabs and has to be set from a script at runtime.

```csharp
using UnityEngine;public class DrawRendererBounds : MonoBehaviour
{
    // Draws a wireframe box around the selected object,
    // indicating local space bounding volume.
    public void OnDrawGizmosSelected()
    {
        var r = GetComponent<Renderer>();
        if (r == null)
            return;
        var bounds = r.localBounds;
        Gizmos.matrix = transform.localToWorldMatrix;
        Gizmos.color = Color.blue;
        Gizmos.DrawWireCube(bounds.center, bounds.extents * 2);
    }
}
```

Additional resources: ResetLocalBounds, bounds, Bounds.
