<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Assertions.Must.MustExtensions.MustBeNull.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An extension method for Assert.IsNull.

```csharp
using UnityEngine;
using UnityEngine.Assertions;
using UnityEngine.Assertions.Must;public class AssertionExampleClass : MonoBehaviour
{
    MyClass myClassReference;
    void Update()
    {
        //Make sure the myClassReference reference is never set
        myClassReference.MustBeNull();
    }
}public class MyClass {}
```
