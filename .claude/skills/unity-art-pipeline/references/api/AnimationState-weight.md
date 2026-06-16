<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AnimationState-weight.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The weight of animation.

This calculates the blend weights for one curve.

Weights are distributed so that the top layer gets everything. If it doesn't use the full weight then the next layer gets to distribute the remaining weights and so on. Once all weights are used by the top layers, no weights will be available for lower layers anymore Unity uses fair weighting, which means if a lower layer wants 80% and 50% have already been used up, the layer will NOT use up all weights. instead it will take up 80% of the 50%.

**Example:** a upper body which is affected by wave, walk and idle a lower body which is affected by only walk and idle.

- Blend weights can change per animated value because of mixing. Even without mixing, sometimes a curve is just not defined. Still you want the blend weights to add up to 1. Most of the time weights are similar between curves.

```csharp
using UnityEngine;
using System.Collections;public class ExampleScript : MonoBehaviour
{
    public Animation anim;    void Start()
    {
        // Set the blend weight of the walk animation to 0.5
        anim["Walk"].weight = 0.5f;
    }
}
```
