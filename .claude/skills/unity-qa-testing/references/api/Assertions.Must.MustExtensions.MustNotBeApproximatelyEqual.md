<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Assertions.Must.MustExtensions.MustNotBeApproximatelyEqual.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An extension method for Assert.AreNotApproximatelyEqual.

```csharp
using UnityEngine;
using UnityEngine.Assertions;
using UnityEngine.Assertions.Must;public class AssertionExampleClass : MonoBehaviour
{
    Rigidbody rb;
    void Update()
    {
        //Make sure the rigidbody never stops.
        //AreNotApproximatelyEqual should be used for comparing floating point variables.
        //Unless specified, default error tolerance will be used.
        rb.velocity.magnitude.MustNotBeApproximatelyEqual(0.0f);
    }
}
```
