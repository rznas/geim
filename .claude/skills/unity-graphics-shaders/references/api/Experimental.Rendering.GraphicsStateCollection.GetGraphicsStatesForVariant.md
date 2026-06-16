<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.Rendering.GraphicsStateCollection.GetGraphicsStatesForVariant.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| shader | Shader used in the variant. |
| passId | PassIdentifier used in the variant. |
| keywords | LocalKeyword array of keywords used in the variant. |
| results | GraphicsState list to populate. |
| variant | The input shader variant. |

### Description

Populate given list with graphics states associated with an input shader variant.

```csharp
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Experimental.Rendering;public class GetGraphicsStatesExample : MonoBehaviour
{
    public GraphicsStateCollection graphicsStateCollection;    void Start()
    {
        List<GraphicsStateCollection.ShaderVariant> variants = new List<GraphicsStateCollection.ShaderVariant>();
        graphicsStateCollection.GetVariants(variants);
        foreach (var variant in variants)
        {
            List<GraphicsStateCollection.GraphicsState> states = new List<GraphicsStateCollection.GraphicsState>();
            graphicsStateCollection.GetGraphicsStatesForVariant(variant, states);
        }
    }
}
```

Additional resources: GetGraphicsStateCountForVariant, AddGraphicsStateForVariant.
