<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AnimationState-blendMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Which blend mode should be used?

```csharp
using UnityEngine;
using System.Collections;public class ExampleScript : MonoBehaviour
{
    public Animation anim;    void Start()
    {
        // Set the leanLeft animation to blend additively
        anim["leanLeft"].blendMode = AnimationBlendMode.Additive;
    }
}
```
