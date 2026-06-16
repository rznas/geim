<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/BodyDof.LastBodyDof.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The last value of the BodyDof enum.

This value can be used in `for` loops.

```csharp
using UnityEngine;using UnityEngine.Animations;public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        for (int i = 0; i < (int)BodyDof.LastBodyDof; ++i)
        {
            var handle = new MuscleHandle((BodyDof)i);
            Debug.Log(handle.name);
        }
    }
}
```
