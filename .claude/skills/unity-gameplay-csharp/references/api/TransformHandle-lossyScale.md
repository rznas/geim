<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TransformHandle-lossyScale.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The global scale of the object (Read Only).

Please note that if you have a parent transform with scale and a child that is arbitrarily rotated, the scale will be skewed. Thus scale can not be represented correctly in a 3 component vector but only a 3x3 matrix. Such a representation is quite inconvenient to work with however. lossyScale is a convenience property that attempts to match the actual world scale as much as it can. If your objects are not skewed the value will be completely correct and most likely the value will not be very different if it contains skew too.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        print(transformHandle.lossyScale);
    }
}
```
