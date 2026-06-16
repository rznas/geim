<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.TextureSheetAnimationModule-frameOverTimeMultiplier.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The frame over time mutiplier.

Changing this property is more efficient than accessing the entire curve, if you only want to change the overall frame over time multiplier.

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
        tex.numTilesY = 2;
        tex.frameOverTimeMultiplier = 2.0f;
    }
}
```
