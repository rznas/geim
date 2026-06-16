<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LayerMask.GetMask.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| layerNames | List of layer names to convert to a layer mask. |

### Returns

**int** The layer mask created from the `layerNames`.

### Description

Given a set of layer names as defined by either a Builtin or a User Layer in the Tags and Layers manager, returns the equivalent layer mask for all of them.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        Debug.Log(LayerMask.GetMask("UserLayerA", "UserLayerB"));
    }
}
```

**Note:** Suppose `UserLayerA` and `UserLayerB` are the tenth and eleventh layers. These will have a User Layer values of 10 and 11. To obtain their layer mask value their names can be passed into GetMask. The argument can either be a list of their names or an array of strings storing their names. In this case the return value will be 2^10 + 2^11 = 3072.
