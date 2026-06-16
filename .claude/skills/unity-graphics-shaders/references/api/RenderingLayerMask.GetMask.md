<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RenderingLayerMask.GetMask.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| renderingLayerNames | List of layer names to convert to a rendering layer mask. |

### Returns

**uint** The rendering layer mask created from the `renderingLayerNames`.

### Description

Given a set of rendering layer names as defined in the Tags and Layers manager, returns the equivalent rendering layer mask for all of them.

```csharp
using UnityEngine;
using UnityEngine.Rendering;public class Example : MonoBehaviour
{
    void Start()
    {
        Debug.Log(RenderingLayerMask.GetMask("UserLayerA", "UserLayerB"));
    }
}
```

**Note:** Suppose `UserLayerA` and `UserLayerB` are the tenth and eleventh layers. These will have a Rendering Layer values of 10 and 11. To obtain their layer mask value their names can be passed into GetMask. The argument can either be a list of their names or an array of strings storing their names. In this case the return value will be 2^10 + 2^11 = 3072.

### Parameters

| Parameter | Description |
| --- | --- |
| renderingLayerNames | Span of layer names to convert to a rendering layer mask. |

### Returns

**uint** The rendering layer mask created from the `renderingLayerNames`.

### Description

Given a set of rendering layer names as defined in the Tags and Layers manager, returns the equivalent rendering layer mask for all of them.

```csharp
using System;
using UnityEngine;
using UnityEngine.Rendering;public class Example : MonoBehaviour
{
    [SerializeField] string[] renderingLayerNames = { "UserLayerA", "UserLayerB" };    void Start()
    {
        Debug.Log(RenderingLayerMask.GetMask(new ReadOnlySpan<string>(renderingLayerNames)));
    }
}
```
