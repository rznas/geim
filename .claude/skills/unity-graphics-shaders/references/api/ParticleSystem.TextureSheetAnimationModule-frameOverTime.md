<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.TextureSheetAnimationModule-frameOverTime.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A curve to control which frame of the Texture sheet animation to play.

The system uses this property when ParticleSystem.TextureSheetAnimationModule.timeMode is set to Curve. Additional resources: MinMaxCurve.

```csharp
using UnityEngine;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;    void Start()
    {
        ps = GetComponent<ParticleSystem>();        var main = ps.main;
        main.startLifetimeMultiplier = 2.0f;        var tex = ps.textureSheetAnimation;
        tex.enabled = true;
        tex.numTilesX = 4;
        tex.numTilesY = 2;        // A simple ping-pong curve.
        AnimationCurve curve = new AnimationCurve();
        curve.AddKey(0.0f, 0.0f);
        curve.AddKey(0.5f, 1.0f);
        curve.AddKey(1.0f, 0.0f);        // Apply the curve.
        tex.frameOverTime = new ParticleSystem.MinMaxCurve(1.0f, curve);
    }
}
```
