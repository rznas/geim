<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Vector2.Lerp.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Linearly interpolates between vectors `a` and `b` by `t`.

The parameter `t` is clamped to the range [0, 1].

When `t` = 0 returns `a`. 
 When `t` = 1 return `b`. 
 When `t` = 0.5 returns the midpoint of `a` and `b`.

Additional resources: LerpUnclamped.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    public Vector2 destination;    void Update()
    {
        //Moves the GameObject from it's current position to destination over time
        transform.position = Vector2.Lerp(transform.position, destination, Time.deltaTime);
    }
}
```
