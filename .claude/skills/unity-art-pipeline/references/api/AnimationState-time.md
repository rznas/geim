<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AnimationState-time.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The current time of the animation.

If the time is larger than length it will be wrapped according to wrapMode. The value can be larger than the animations length. In this case playback mode will remap the time before sampling. This value usually goes from 0 to infinity.

```csharp
using UnityEngine;
using System.Collections;public class ExampleScript : MonoBehaviour
{
    public Animation anim;    void Start()
    {
        // Rewind the walk animation
        anim["Walk"].time = 0.0f;
    }
}
```
