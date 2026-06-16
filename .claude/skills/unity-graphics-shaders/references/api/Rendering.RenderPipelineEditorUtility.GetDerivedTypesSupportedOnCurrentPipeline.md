<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RenderPipelineEditorUtility.GetDerivedTypesSupportedOnCurrentPipeline.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**Type[]** Child types of the base type supported on current pipeline.

### Description

Returns the types that're children of `T` and have a SupportedOnRenderPipelineAttribute corresponding to the render pipeline you're using. Order of the return types is arbitrary.

```csharp
using UnityEditor.Rendering;
using UnityEngine;
using UnityEngine.Rendering;public interface IBaseClass
{
}[SupportedOnRenderPipeline]
public class SupportedOnClass : IBaseClass
{
}public class BehaviourTest : MonoBehaviour
{
    void Start()
    {
        var types = RenderPipelineEditorUtility.GetDerivedTypesSupportedOnCurrentPipeline<IBaseClass>();
        foreach (var type in types)
        {
            Debug.Log($"{type.Name} is supported on current Render Pipeline.");
        }
    }
}
```

Additional resources: SupportedOnRenderPipelineAttribute.
