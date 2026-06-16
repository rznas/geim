<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VFX.VisualEffectAsset.GetExposedSpace.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| nameID | The ID of the property. This is the same ID that Shader.PropertyToID returns. |
| name | The name of the property. |

### Returns

**VFXSpace** The expected space of the property.

### Description

Provides the configured space of an exposed property in VisualEffectAsset.

VFXSpace.None will be returned if the property doesn't exist or isn't spaceable.

The VisualEffect.SetVector3 won't apply any automatic transform, because `VisualEffect` expects raw values.

Additional resources: VisualEffectAsset.GetExposedProperties, VisualEffectAsset.GetExposedSpace, VisualEffectAsset.GetTextureDimension.

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

This example logs detailed information regarding all exposed properties.
