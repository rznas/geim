<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.Rendering.GraphicsStateCollection.GetVariants.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| results | ShaderVariant list to be populated. |

### Description

Populate given list with shader variants contained in the collection.

```csharp
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Experimental.Rendering;public class GetVariantsExample : MonoBehaviour
{
    public GraphicsStateCollection graphicsStateCollection;    void Start()
    {
        List<GraphicsStateCollection.ShaderVariant> variants = new List<GraphicsStateCollection.ShaderVariant>();
        graphicsStateCollection.GetVariants(variants);
        Debug.Log("Collection contains " + variants.Count + " variants.");
    }
}
```
