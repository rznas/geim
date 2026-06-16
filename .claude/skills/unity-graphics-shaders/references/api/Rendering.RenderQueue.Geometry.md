<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RenderQueue.Geometry.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

`Geometry` is a predefined render queue that Unity uses for opaque geometry.

This render queue is the default that Unity uses to render all opaque materials. The `Geometry` render queue has a default value of 2000. You can change this value using the Material.renderQueue or Shader.renderQueue APIs.

You can apply an offset to the default value. This offset must have a value between -500 and +500 to be considered opaque by Unity. Values outside this range fall back into other RenderQueue categories like RenderQueue.Background.

Additional resources: Material.renderQueue, Shader.renderQueue, subshader tags.

```csharp
using UnityEngine;
using UnityEngine.Rendering;public class RenderQueueExample : MonoBehaviour
{
    public Material material;
    public int renderQueueOffset;    void Start()
    {
        if (material != null)
        {
            // Adjust the render queue using the specified offset
            material.renderQueue = (int)(RenderQueue.Geometry + renderQueueOffset);
        }
    }
}
```

Assigns a custom render queue to a material, to force the sorting of objects rendered with this material.
