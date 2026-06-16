<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ReflectionProbe-cullingMask.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This is used to render parts of the reflecion probe's surrounding selectively.

If the GameObject's `layerMask` AND the probe's `cullingMask` is zero then the game object will be invisible from this probe. See Layers for more information.

```csharp
using UnityEngine;
using UnityEditor;public class ExampleScript : MonoBehaviour
{
    void Start()
    {
        var probe = GetComponent<ReflectionProbe>();
        // Only render objects in the first layer (Default layer) when capturing the probe's texture
        probe.cullingMask = 1 << 0;
    }
}
```

Additional resources: Camera.cullingMask.
