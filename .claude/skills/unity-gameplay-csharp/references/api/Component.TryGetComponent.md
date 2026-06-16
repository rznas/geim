<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Component.TryGetComponent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| component | The output argument that will contain the component or `null`. |

### Returns

**bool** Returns `true` if the component is found, `false` otherwise.

### Description

Gets the component of the specified type, if it exists.

TryGetComponent attempts to retrieve the component of the given type. The notable difference compared to GameObject.GetComponent is that this method does not allocate in the Editor when the requested component does not exist.

```csharp
using UnityEngine;public class TryGetComponentExample : MonoBehaviour
{
    void Start()
    {
        if (TryGetComponent<HingeJoint>(out HingeJoint hinge))
        {
            hinge.useSpring = false;
        }
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| type | The type of component to search for. |
| component | The output argument that will contain the component or `null`. |

### Returns

**bool** Returns `true` if the component is found, `false` otherwise.

### Description

The non-generic version of this method.

This version of TryGetComponent is not as efficient as the Generic version (above), so you should only use it if necessary.
