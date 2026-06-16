<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Random-rotation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns a random rotation (Read Only).

Randomize the `x`, `y`, `z`, and `w` of a Quaternion each to [-1.0..1.0] (inclusive) via Range and normalize the result. See also rotationUniform for a slower but higher quality algorithm.

```csharp
using UnityEngine;// Click the "Rotate!" button and a rotation will be appliedpublic class ExampleClass : MonoBehaviour
{
    void OnGUI()
    {
        if (GUI.Button(new Rect(10, 10, 100, 50), "Rotate!"))
        {
            transform.rotation = Random.rotation;
        }
    }
}
```
