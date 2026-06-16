<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Random-rotationUniform.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns a random rotation with uniform distribution (Read Only).

Employs [Hopf fibration](https://en.wikipedia.org/wiki/Hopf_fibration) to return a random Quaternion within a uniformly distributed selection space. Gives higher quality results compared to the more naive approach employed by rotation, though at a 40% performance cost.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        // Sets a random orientation for the object.
        transform.rotation = Random.rotationUniform;
    }
}
```
