<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AnimationState-speed.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The playback speed of the animation. 1 is normal playback speed.

A negative playback speed will play the animation backwards.

Additional resources: AnimationState.time, AnimationState.wrapMode properties and WrapMode enum.

```csharp
using UnityEngine;
using System.Collections;public class ExampleScript : MonoBehaviour
{
    public Animation anim;    void Start()
    {
        // Walk at normal speed
        anim["Walk"].speed = 1.0f;        // Walk at double speed
        anim["Walk"].speed = 2.0f;
    }
}
```
