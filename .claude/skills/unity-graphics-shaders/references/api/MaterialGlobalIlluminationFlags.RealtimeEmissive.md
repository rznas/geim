<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MaterialGlobalIlluminationFlags.RealtimeEmissive.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The emissive lighting will affect Enlighten Realtime Global Illumination. It emits lighting into real-time lightmaps and real-time Light Probes.

The flags are mutually exclusive so if you are using real-time Emissive lighting, you must remove the EmissiveIsBlack flag from the material as shown in the example below.

```csharp
using UnityEngine;public class ExampleClass : MonoBehaviour
{
    Material material;    void Start()
    {
        // Remove the EmissiveIsBlack flag from material:
        MaterialGlobalIlluminationFlags flags = material.globalIlluminationFlags;
        flags &= ~MaterialGlobalIlluminationFlags.EmissiveIsBlack;
        material.globalIlluminationFlags = flags;
    }
}
```

Additional resources: Material.globalIlluminationFlags.EmissiveIsBlack.
