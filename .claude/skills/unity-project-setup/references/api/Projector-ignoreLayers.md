<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Projector-ignoreLayers.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Which object layers are ignored by the projector.

See layer mask.

By default this is zero - i.e. no layers are ignored. Each set bit in `ignoreLayers` will make this layer not affected by the projector.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        Projector proj = GetComponent<Projector>();
        // Make the projector ignore Default (0) layer
        proj.ignoreLayers = (1 << 0);
    }
}
```

Additional resources: projector component, Layers.
