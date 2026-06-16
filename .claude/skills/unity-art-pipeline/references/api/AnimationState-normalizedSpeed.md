<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AnimationState-normalizedSpeed.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The normalized playback speed.

This is most commonly used to synchronize playback speed when blending between two animations. In most cases it is easier and better to use Animation Layer syncing instead.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public Animation anim;    void Start()
    {
        anim = GetComponent<Animation>();
        anim["Run"].normalizedSpeed = anim["Walk"].normalizedSpeed;
    }
}
```
