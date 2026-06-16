<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AnimationState-wrapMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Wrapping mode of the animation.

By default wrapMode is initialized to the value set in the Animation component's wrap mode.

```csharp
using UnityEngine;
using System.Collections;public class ExampleScript : MonoBehaviour
{
    public Animation anim;    void Start()
    {
        // Set the wrap mode of the walk animation to loop
        anim["Walk"].wrapMode = WrapMode.Loop;
    }
}
```
