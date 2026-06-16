<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Gizmos.DrawGUITexture.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| screenRect | The size and position of the texture on the "screen" defined by the XY plane. |
| texture | The texture to be displayed. |
| mat | An optional material to apply the texture. |
| leftBorder | Inset from the rectangle's left edge. |
| rightBorder | Inset from the rectangle's right edge. |
| topBorder | Inset from the rectangle's top edge. |
| bottomBorder | Inset from the rectangle's bottom edge. |

### Description

Draw a texture in the Scene.

The chosen texture is drawn in 3D space on a "screen" defined by the XY plane (ie, the plane where the Z coordinate is zero). The values of the texture rectangle are given in Scene units. The optional border values specify an inset from each edge within the rectangle in Scene units; the texture is drawn inside the inset rectangle and the edge pixels are repeated outwards. This is a useful quick way to create a large background region around the main texture when its edges are of a single colour.

This function can be useful for creating GUI backgrounds in conjunction with a camera pointing directly at the texture.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public Texture myTexture;    void OnDrawGizmosSelected()
    {
        // Draw a texture rectangle on the XY plane of the scene
        Gizmos.DrawGUITexture(new Rect(10, 10, 20, 20), myTexture);
    }
}
```
