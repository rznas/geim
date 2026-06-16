<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.Rendering.GraphicsStateCollection.AddGraphicsStateForVariant.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| shader | Shader used in associated variant. |
| passId | PassIdentifier used in associated variant. |
| keywords | LocalKeyword array of keywords used in associated variant. |
| variant | Shader variant that the graphics state should be associated with. |
| setup | GraphicsState to add. |

### Returns

**bool** Returns true if a new graphics state was added to the collection, false otherwise.

### Description

Adds a new graphics state associated with a shader variant.

If the specified shader variant does not yet exist in the collection, then it will be added. **Note**: WebGPU does not fully support manually adding graphics states, results might be unexpected. Additional resources: GetGraphicsStatesForVariant.

```csharp
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Experimental.Rendering;public class AddGraphicsStateExample : MonoBehaviour
{
    public GraphicsStateCollection graphicsStateCollection;
    public GraphicsStateCollection.ShaderVariant variant;    void Start()
    {
        if (graphicsStateCollection.ContainsVariant(variant.shader, variant.passId, variant.keywords))
        {
            List<GraphicsStateCollection.GraphicsState> states = new List<GraphicsStateCollection.GraphicsState>();
            graphicsStateCollection.GetGraphicsStatesForVariant(variant, states);
            foreach (var state in states)
            {
                // Add a new modified version of each existing state for this variant
                GraphicsStateCollection.GraphicsState newState = state;
                newState.wireframe = true;
                graphicsStateCollection.AddGraphicsStateForVariant(variant, newState);
            }
        }
        else
        {
            Debug.Log("variant was not found in graphicsStateCollection! No graphics states were added.");
        }
    }
}
```
