<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.Rendering.GraphicsStateCollection.CopyGraphicsStatesForVariant.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| srcShader | Shader used in the source variant. |
| srcPassId | PassIdentifier used in the source variant. |
| srcKeywords | LocalKeyword array of keywords used in the source variant. |
| srcVariant | Source variant to copy from. |
| dstShader | Shader used in the destination variant. |
| dstPassId | PassIdentifier used in the destination variant. |
| dstKeywords | LocalKeyword array of keywords used in the destination variant. |
| dstVariant | Destination variant to copy to. |

### Returns

**bool** True if at least one new graphics state was copied, false otherwise.

### Description

Copy all the graphics states from the source variant to the destination variant.

If the destination shader variant does not yet exist in the collection, then it will be added.

```csharp
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Experimental.Rendering;public class CopyGraphicsStatesExample : MonoBehaviour
{
    public GraphicsStateCollection graphicsStateCollection;
    public GraphicsStateCollection.ShaderVariant srcVariant;    void Start()
    {
        if (graphicsStateCollection.ContainsVariant(srcVariant.shader, srcVariant.passId, srcVariant.keywords))
        {
            List<GraphicsStateCollection.ShaderVariant> variants = new List<GraphicsStateCollection.ShaderVariant>();
            graphicsStateCollection.GetVariants(variants);
            foreach (var dstVariant in variants)
            {
                graphicsStateCollection.CopyGraphicsStatesForVariant(srcVariant, dstVariant);
            }
        }
        else
        {
            Debug.Log("srcVariant was not found in graphicsStateCollection! No graphics states were copied.");
        }
    }
}
```

Additional resources: GetGraphicsStatesForVariant, AddGraphicsStateForVariant.
