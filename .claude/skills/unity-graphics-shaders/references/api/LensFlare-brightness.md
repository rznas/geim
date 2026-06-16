<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LensFlare-brightness.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The strength of the flare.

This controls the size and brightness of the flare elements.

Additional resources: Lens flare component, flare assets.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Increments the strenght of the Lensflare lf when the Transform tr
    // gets closer to the Lens flare    public LensFlare lf;
    public Transform tr;    void Update()
    {
        lf.brightness = 1 / Vector3.Distance(lf.transform.position, tr.position);
    }
}
```
