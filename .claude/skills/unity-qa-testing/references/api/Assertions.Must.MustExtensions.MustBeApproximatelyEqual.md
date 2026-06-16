<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Assertions.Must.MustExtensions.MustBeApproximatelyEqual.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An extension method for Assert.AreApproximatelyEqual.

```csharp
using UnityEngine;
using UnityEngine.Assertions;
using UnityEngine.Assertions.Must;public class AssertionExampleClass : MonoBehaviour
{
    void Update()
    {
        //Make sure the position of the GameObject is always in the center of the Scene.
        //MustBeApproximatelyEqual should be used for comparing floating point variables.
        //Unless specified, default error tolerance will be used.
        transform.position.x.MustBeApproximatelyEqual(0.0f);
        transform.position.y.MustBeApproximatelyEqual(0.0f);
        transform.position.z.MustBeApproximatelyEqual(0.0f);
    }
}
```
