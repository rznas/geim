<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AnimationClip-frameRate.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Frame rate at which keyframes are sampled. (Read Only)

This is the frame rate that was used in the animation program you used to create the animation or model.

```csharp
using UnityEngine;
using System.Collections;public class ExampleScript : MonoBehaviour
{
    public Animation anim;    void Update()
    {
        // Prints the frame rate of the animation clip to the console
        print(anim["walk"].clip.frameRate);
    }
}
```
