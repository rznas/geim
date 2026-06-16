<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VFX.VisualEffectAsset.GetExposedProperties.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| exposedProperties | The List that this function populates with exposed properties. |

### Description

Gets the name and type of every exposed property.

The returned `System.Type` is one of the following:

- AnimationCurve
- bool
- `float`
- Gradient
- GraphicsBuffer
- `int`
- Matrix4x4
- Mesh
- SkinnedMeshRenderer
- Texture
- `uint`
- Vector2
- Vector3
- Vector4

To determine the TextureDimension of a Texture, call VisualEffectAsset.GetTextureDimension.

To determine the VFXSpace of an exposed property, call VisualEffectAsset.GetExposedSpace.

To increase the speed of the retrieval process, preallocate the `exposedProperties` input list.

This example logs detailed information regarding all exposed properties:

```csharp
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Rendering;
using UnityEngine.VFX;

[ExecuteInEditMode]
class LogExposedProperties : MonoBehaviour
{
	// Called when the script or GameObject is enabled
    void OnEnable()
    {
        VisualEffect vfx = GetComponent<VisualEffect>();
        if (vfx != null && vfx.visualEffectAsset != null)
        {
            VisualEffectAsset vfxAsset = vfx.visualEffectAsset;
            var exposedProperties = new List<VFXExposedProperty>();

            // Retrieve all exposed properties from the VisualEffectAsset and store them in the list
            vfxAsset.GetExposedProperties(exposedProperties);

            if (exposedProperties.Count == 0)
            {
                Debug.Log($"There are no exposed properties for asset: {vfxAsset}");
            }

            foreach (var exposedProperty in exposedProperties)
            {
                // Retrieve additional details about the exposed property
                VFXSpace space = vfxAsset.GetExposedSpace(exposedProperty.name);
                TextureDimension texDim = vfxAsset.GetTextureDimension(exposedProperty.name);

                string log = $"{exposedProperty.name}, {exposedProperty.type}";
                if (space != VFXSpace.None)
                {
                    log += $", {space}";
                }
                if (texDim != TextureDimension.Unknown)
                {
                    log += $", {texDim}";
                }
                Debug.Log(log);
            }
        }
        else
        {
            Debug.Log("Unable to retrieve VisualEffect component or VisualEffectAsset is null.");
        }
    }
}
```
