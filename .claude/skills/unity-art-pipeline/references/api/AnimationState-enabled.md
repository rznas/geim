<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AnimationState-enabled.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Enables / disables the animation.

For the animation to take any effect the weight also needs to be set to a value higher than zero. If the animation is disabled, time will be paused until the animation is enabled again.

```csharp
using UnityEngine;
using System.Collections;public class ExampleScript : MonoBehaviour
{
    public Animation anim;    void Start()
    {
        // Enable the walk cycle
        anim["Walk"].enabled = true;
        anim["Walk"].weight = 1.0f;
    }
}
```
