<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem-customData.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Script interface for the CustomDataModule of a Particle System.

Once configured, this module will generate custom per-particle data, which you can use either in script or shaders. To read the data from script, simply call ParticleSystem.GetCustomParticleData. To read it in a shader, enable the custom data streams in the ParticleSystemRenderer Module, or call ParticleSystemRenderer.SetActiveVertexStreams from script. Once enabled, the custom data will be passed to your vertex shader through a TEXCOORD channel. The ParticleSystemRenderer Inspector will tell you which channels are being used.

Particle System modules do not need to be reassigned back to the system; they are interfaces and not independent objects.

Additional resources: ParticleSystemRenderer.SetActiveVertexStreams.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        ParticleSystem ps = GetComponent<ParticleSystem>();
        var customData = ps.customData;
        customData.enabled = true;        Gradient grad = new Gradient();
        grad.SetKeys(new GradientColorKey[] { new GradientColorKey(Color.blue, 0.0f), new GradientColorKey(Color.red, 1.0f) }, new GradientAlphaKey[] { new GradientAlphaKey(1.0f, 0.0f), new GradientAlphaKey(0.0f, 1.0f) });        customData.SetMode(ParticleSystemCustomData.Custom1, UnityEngine.ParticleSystemCustomDataMode.Color);
        customData.SetColor(ParticleSystemCustomData.Custom1, grad);
    }
}
```
