<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AnimationState-normalizedTime.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Normalized time of the State.

The normalized time is a progression ratio. The integer part is the number of times the State has looped. The fractional part is a percentage (0-1) that represents the progress of the current loop. For example, a normalized time of 0.5 means that the State has not looped (0) and is halfway (50% or .5) through the first loop.

```csharp
using UnityEngine;
using System.Collections;public class ExampleScript : MonoBehaviour
{
    public Animation anim;    void Start()
    {
        // Fast forward to the middle of the animation
        anim["Walk"].normalizedTime = 0.5f;
    }
}
```
