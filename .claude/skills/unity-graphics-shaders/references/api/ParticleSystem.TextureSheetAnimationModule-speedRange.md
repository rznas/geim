<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.TextureSheetAnimationModule-speedRange.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specify how particle speeds are mapped to the animation frames.

If a particle is travelling slower than the minimum speed, it uses the first frame. If a particle is travelling faster than the maximum speed, then it uses the final frame. For all other speeds, the particle chooses a frame based on how far between the minimum and maximum value its speed is.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;    void Start()
    {
        ps = GetComponent<ParticleSystem>();        var textureSheetAnimation = ps.textureSheetAnimation;
        textureSheetAnimation.enabled = true;
        textureSheetAnimation.speedRange = new Vector2(0.9f, 5.0f);
    }
}
```
